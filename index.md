---
title: Konveyor
layout: default
---

# What is Konveyor?

**A Collection of Tools and Best Practices to Help Organizations Transform**

The Konveyor Community is a group of people passionate about helping others modernize and migrate their applications to the hybrid cloud by building tools, best practices, and providing advice on how to break down monoliths, adopt containers, and embrace Kubernetes.






## Projects in Konveyor

* [mig-operator](https://github.com/konveyor/mig-operator) - A tool for migrating namespaces between Kubernetes clusters.
* [virt-operator](https://github.com/konveyor/virt-operator) - A tool for migrating virtual machines to KubeVirt.
* [move2kube](https://github.com/konveyor/move2kube) - A tool that accelerates the process of re-platforming to Kubernetes by analyzing source artifacts.

### mig-operator

![mig-operator](https://github.com/konveyor/konveyor.github.io/raw/master/images/Konveyor_Diagram_mig-operator.png)

mig-operator allows users to discover namespaces on source clusters and migrate the objects and their persistent volumes to a destination cluster.

### virt-operator

![virt-operator](https://github.com/konveyor/konveyor.github.io/raw/master/images/Konveyor_Diagram_virt-operator.png)

virt-operator allows users to discover virtual machines running on traditional virtualization (vSphere) and migrate them to Kubevirt.


### Move2Kube

![mig-operator](https://github.com/konveyor/konveyor.github.io/raw/master/images/Konveyor_Diagram_move2kube.png)

move2kube is a command line tool that uses source artifacts such as docker compose files or cloud foundry manifest files, and even source code to generate kubernetes deployment artifacts including object yaml, helm charts, and operators. 


## Assistance and Collaboration

If you need help or are interested in collaborating you can ask a question in the [forum](https://groups.google.com/access-error?continue=https://groups.google.com/g/konveyorio) or join us in the #konveyor room on the [Kubernetes slack](https://slack.k8s.io/). 

