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



### Creating a Migration Plan



