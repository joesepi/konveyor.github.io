---
layout: default
title: Get Started with Konveyor
description: Konveyor Getting Started Guide
---

# Introduction

**Konveyor** provides tools for migrating existing applications and infrastructure between Kubernetes clusters. At this time, Konveyor works on OpenShift Kubernetes clusters. The team is working to make it work with other Kubernetes clusters in the future.


## Assumptions

In this guide we assume you have two OpenShift clusters running and are logged into them. One is an OpenShift 3 cluster and the other is an OpenShift 4 cluster, but this doesn't need to be the case.

## Installing the Konveyor Operator

On the OpenShift 4 cluster, create a namespace named "openshift-migration". This is where we will install the Konveyor operator.

`
$ oc create namespace openshift-migration
namespace/openshift-migration created
`

Log into the OpenShift console as kubeadmin. 

![001.png](https://github.com/konveyor/konveyor.github.io/raw/master/images/getstarted/001.png)

Navigate to the OperatorHub

![002.png](https://github.com/konveyor/konveyor.github.io/raw/master/images/getstarted/002.png)

Search for the Konveyor operator

![003.png](https://github.com/konveyor/konveyor.github.io/raw/master/images/getstarted/003.png)

Accept the community operator

![004.png](https://github.com/konveyor/konveyor.github.io/raw/master/images/getstarted/004.png)

Click install

![005.png](https://github.com/konveyor/konveyor.github.io/raw/master/images/getstarted/005.png)

Set the installation mode to "A specific namespace on the cluster" and set the namespace dropdown to "openshift-migration".

Set the "Update Channel" to "release-v1.1"

Set the "Approval Strategy" to "Automatic"

Click Subscribe

![006.png](https://github.com/konveyor/konveyor.github.io/raw/master/images/getstarted/006.png)

Click "view 12 more ..."

![007.png](https://github.com/konveyor/konveyor.github.io/raw/master/images/getstarted/007.png)

Click "Create New" and "MigrationController" 

![008.png](https://github.com/konveyor/konveyor.github.io/raw/master/images/getstarted/008.png)

Click "Create"

![009.png](https://github.com/konveyor/konveyor.github.io/raw/master/images/getstarted/009.png)

## Configuring Konveyor

After installing Konveyor by operator you will need to create a replication repository, add migration plans, and execute the migrations.

### Configuring the Replication Repository using Multi-Cloud Object Gateway (MCG) and OpenShift Container Storage (OCS)

On the OpenShift 4 cluster, create a namespace named "openshift-migration". This is where we will install the Konveyor operator.

`
$ oc create namespace openshift-storage
namespace/openshift-storage created
`

Log into the OpenShift console as kubeadmin.

Navigate to the OperatorHub.

Search for the OpenShift Container Storage operator.

![010.png](https://github.com/konveyor/konveyor.github.io/raw/master/images/getstarted/010.png)


Click install

![011.png](https://github.com/konveyor/konveyor.github.io/raw/master/images/getstarted/011.png)

Set the installation mode to "A specific namespace on the cluster" and set the namespace dropdown to "openshift-migration".

Set the "Update Channel" to "release-v1.1"

Set the "Approval Strategy" to "Automatic"

Click Subscribe

![012.png](https://github.com/konveyor/konveyor.github.io/raw/master/images/getstarted/012.png)

On the OpenShift 4 cluster create a Custom Resource (CR). Create a noobaa.yml with the following content:

`
apiVersion: noobaa.io/v1alpha1
kind: NooBaa
metadata:
  name: noobaa
  namespace: openshift-storage
spec:
 dbResources:
   requests:
     cpu: 0.5
     memory: 1Gi
 coreResources:
   requests:
     cpu: 0.5
     memory: 1Gi
`

Create the NooBaa object:

`
$ oc create -f noobaa.yml
`

Create the BackingStore CR configuration file, bs.yml, with the following content:

`
apiVersion: noobaa.io/v1alpha1
kind: BackingStore
metadata:
  finalizers:
  - noobaa.io/finalizer
  labels:
    app: noobaa
  name: mcg-pv-pool-bs
  namespace: openshift-storage
spec:
  pvPool:
    numVolumes: 3 1
    resources:
      requests:
        storage: 50Gi 2
    storageClass: gp2 3
  type: pv-pool
`

Create the BackingStore object:

`
$ oc create -f bs.yml
`

Create the BucketClass CR configuration file, bc.yml, with the following content:

`
apiVersion: noobaa.io/v1alpha1
kind: BucketClass
metadata:
  labels:
    app: noobaa
  name: mcg-pv-pool-bc
  namespace: openshift-storage
spec:
  placementPolicy:
    tiers:
    - backingStores:
      - mcg-pv-pool-bs
      placement: Spread
`

Create the BucketClass object:

`
$ oc create -f bc.yml
`

Create the ObjectBucketClaim CR configuration file, obc.yml, with the following content:

`
apiVersion: objectbucket.io/v1alpha1
kind: ObjectBucketClaim
metadata:
  name: migstorage
  namespace: openshift-storage
spec:
  bucketName: migstorage 1
  storageClassName: openshift-storage.noobaa.io
  additionalConfig:
    bucketclass: mcg-pv-pool-bc
`

Create the ObjectBucketClaim object:

`
$ oc create -f obc.yml
`

Watch the resource creation process to verify that the ObjectBucketClaim status is Bound:

`
$ watch -n 30 'oc get -n openshift-storage objectbucketclaim migstorage -o yaml'
`

This process can take five to ten minutes.

Obtain and record the following values, which are required when you add the replication repository to the CAM web console:

 - S3 endpoint:

`
$ oc get route -n openshift-storage s3
`

 - S3 provider access key:

`
$ oc get secret -n openshift-storage migstorage -o go-template='{{ .data.AWS_ACCESS_KEY_ID }}' | base64 -d
`

 - S3 provider secret access key:

`
$ oc get secret -n openshift-storage migstorage -o go-template='{{ .data.AWS_SECRET_ACCESS_KEY }}' | base64 -d
`




### Creating a Migration Plan



