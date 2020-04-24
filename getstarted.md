---
layout: default
title: Get Started with Konveyor
description: Konveyor Getting Started Guide
---

# Introduction

**Konveyor** provides tools for migrating existing applications and infrastructure to and between Kubernetes clusters. At this time, Konveyor-Migrate requires OpenShift. The team is working to make it work with Kubernetes clusters in the future.


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



