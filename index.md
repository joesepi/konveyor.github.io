---
title: Konveyor
layout: default
---

# What is Konveyor?

Konveyor is **a community of people** passionate about helping others **modernize and migrate their applications** to the hybrid cloud by **building tools, identifying patterns,** and providing advice on how to break down monoliths, adopt containers, and embrace Kubernetes.

{% include youtube_embed.html id="T-LN2CE9MPU" %}  

The community hosts regular [Meetups](meetups.md) where community members talk and demonstrate things they've learned. If you'd like to receive invitations to the meetups or propose a talk you can [join the google group](https://groups.google.com/forum/#!forum/konveyorio).

## Tools in the Konveyor Community

The Konveyor Community is working on tools in many areas. Here is a quick overview of some of the tools:

* [crane](https://github.com/konveyor/mig-operator) - Migrate namespaces between Kubernetes clusters.
* [forklift](https://github.com/konveyor/forklift-operator) - Migrate virtual machines to KubeVirt.
* [move2kube](/move2kube) - Migrate from Cloud Foundry or Docker Swarm to Kubernetes.
* [pelorus](https://github.com/redhat-cop/pelorus) - Measure the four critical measures to software delivery performance.
* [windup](https://github.com/windup/windup) - Analyze applications for modernization paths.

If you have a tool you'd like to contribute please start a new thread in the [google group](https://groups.google.com/forum/#!forum/konveyorio).

![crane logo](https://konveyor.io/raw/master/images/crane-logo-lightbg.png)

![crane](https://konveyor.io/images/Konveyor_Diagram_mig-operator.png)

Crane allows users to discover namespaces on source clusters and migrate the objects and their persistent volumes to a destination cluster.

![fork logo](https://konveyor.io/raw/master/images/forklift-logo-lightbg.png)

![forklift](https://konveyor.io/images/Konveyor_Diagram_virt-operator.png)

Forklift allows users to discover virtual machines running on traditional virtualization (vSphere) and migrate them to Kubevirt.

### move2Kube

![move2kube](https://konveyor.io/images/Konveyor_Diagram_move2kube.png)

move2kube is a command line tool that uses source artifacts such as docker compose files or cloud foundry manifest files, and even source code to generate kubernetes deployment artifacts including object yaml, helm charts, and operators. 

## Assistance and Collaboration

If you need help or are interested in collaborating you can ask a question in the [forum](https://groups.google.com/forum/#!forum/konveyorio) or join us in the #konveyor room on the [Kubernetes slack](https://slack.k8s.io/). 

[Privacy Policy](https://konveyor.io/privacy)
