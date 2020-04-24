---
layout: default
title: Get Started with Konveyor
description: Konveyor Getting Started Guide
---

# Introduction

**Konveyor** provides tools for migrating existing applications and infrastructure to and between Kubernetes clusters. At this time, Konveyor-Migrate requires OpenShift. The team is working to make it work with Kubernetes clusters in the future.


## Assumptions

In this guide we assume you have two OpenShift clusters running and are logged into them.

## Installing the Konveyor Operator

On your OpenShift cluster, create a namespace. This is where we will install the Konveyor operator.

`
$ oc create namespace openshift-migration
namespace/openshift-migration created
`

![001.png](https://github.com/konveyor/konveyor.github.io/raw/master/images/getstarted/001.png)

