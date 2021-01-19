# Crane Release Notes: v1.3.2

## Repo: mig-ui

```
1018a9c Revert "UI changes to support removal of remote watches (#1014)" (#1063)
9fd30e2 move to dayjs from moment (#1056)
0787f8e Fix copy oc command for resources in debug dropdown (#1050)
a174e8f Merge branch 'fix-oc-command' of https://github.com/ibolton336/mig-ui into release-1.3.2
bbf1d06 Update webpack-dev-server (#1051)
4f10d1b Update cert error with suggested copy (#1047)
561172c Merge branch 'master' into fix-oc-command
4d10d26 lint fixes
1bf3edb Update webpack-dev-server (#1051)
b21e6ba revert yarn.lock
91db6ff finish cleaning up UX
cd6ef72 wip
1539706 Update cert error with suggested copy (#1047)
e344918 Revert "Skip MigPlan readiness check at PV discovery (#1034)" (#1046)
9b4d80b Cert error copy update (#1044)
8d6f707 Cert error copy update (#1044)
156c9b5 Reduce bundle size by tree shaking, matching lodash version, & adding compression (#1021)
c35f58e Reduce bundle size by tree shaking, matching lodash version, & adding compression (#1021)
8028410 fix miganalytics flashing when updating migmigration list (#1028)
2f037fd Move login OAuth token handling to backend (#967)
7784b56 Use nodejs image/update to nodejs 12 (#1031)
2909bb4 Move login OAuth token handling to backend (#967)
88063ea fix miganalytics flashing when updating migmigration list (#1028)
feab7b3 Skip MigPlan readiness check at PV discovery (#1034)
ed433f5 UI changes to support removal of remote watches (#1014)
6bd74a6 Use nodejs image/update to nodejs 12 (#1031)
```

## Repo: mig-controller

```
089e7677 Filter velero pod list on currently-running (non-terminating) pods
09044323 Fix discovery debug tree filtering on PVBs/PVRs (#723)
d8f27843 Use ubi8/go-toolset:1.14.7 to avoid ratelimit build failures (#798)
d6ebd79b Bug 1894822: Fix flipped src/dest pods (#797)
9d07f267 Fix PodVolumeBackup & PodVolumeRestore not updating in the discovery inventory correctly. fixes #724
```

## Repo: mig-operator

```
0bf39e6 Update 1.3.2 CSV (#480)
cbbfcc7 Update to account for SA name change from 'mig' to  'migration-controller'
c286ecb Added demo links
190b464 (temporarily) pin community.kubernetes to fix operator_sdk.util (#475)
bb45093 Rollback on demand update (#473)
c4a3b5b Update Cluster, Plan, Storage CRD to include "refresh" spec field. Move StorageClasses cache to MigPlan. (#427)
6674c25 Add table of contents to README.md (#472)
dc49711 update sprint release docs (#471)
e166cd2 Pause for Quay (#469)
dbabcbb Front page README.md formatting pass, move CORS instructions off front page (#470)
9ae5e7c Add instructions to export from bundle to appregistry format (#468)
f88a399 Update hacking.md with opm instructions (#467)
109ea08 sprint-build playbook fixes (#466)
0783f3a Update CatalogSource to be created in marketplace ns (#465)
85b2678 Add playook to release a sprint build upstream (#459)
0a62f62 checkout files automatically (#462)
bc592e6 add 1.3.1 to skips (#460)
```

## Repo: velero

```
4c9131f1 Use restic release branch for build (#77)
8bd8ce87 1.4.3 rebase (#76)
584d0734 Merge pull request #75 from sseago/crd-resource-fix-upstream
d52b1394 restore proper lowercase/plural CRD resource (#2949)
c20e33ff version string bump to 1.4.2 (#73)
a0b9fac5 Merge pull request #71 from dymurray/vendorUpdate
4b557f2a Include vendor and update Dockerfiles to use vendor
```

## Repo: openshift-velero-plugin

```
84da4e5 Bug 1890704: Return errors from image copy failures (#63)
```

## Repo: velero-plugin-for-microsoft-azure

```
cf82893 vendor files for azure plugin
2a88b4f Wait for snapshot to be ready before restoring
df2536c Update Dockerfile.ubi for go modules
6cbe641 adding Dockerfile.ubi
0eb06da Merge pull request #76 from ashish-amarnath/v1.1.1
602eceb changelogs and compatibility matrix update
6d94db5 Add workflow to auto-assign reviewers (#69)
7da5881 Merge pull request #66 from ashish-amarnath/node-selector-doc
6777e15 📖 document node selector for linux
7f692d4 Merge pull request #59 from sabvente/main
1ba9caa Merge pull request #60 from cfreemoser/bugfix/typo_in_readme
be974f1 Remove extra indentation from README.
8a79d19 Replaces SUBSCRIPTION_ID with AZURE_SUBSCRIPTION_ID
e088aa5 Merge pull request #58 from carlisia/c-insensitive-language
46068b3 Merge pull request #58 from carlisia/c-insensitive-language
b3a7bf1 Address insensitive language
55f3ba1 Merge pull request #52 from stephanwehr/support-incremental-snapshots
3d038eb add support for incremental snapshots of Azure disks
15b36f1 Merge pull request #51 from skriss/aad-pod-identity
c22efaf support aad-pod-identity and certificate auth
46e5099 Merge pull request #50 from ashish-amarnath/remove-travis
4689036 remove travis config
15173a4 rename gh actions add build status badge
f165749 Merge pull request #44 from ashish-amarnath/github-actions
c90ab91 github actions
507fdef update build and Dockerfile to use go modules
f3a2ca9 Merge pull request #43 from ashish-amarnath/go-modules
8c879fb update build and Dockerfile to use go modules
0e1ac19 remove vendor dir and Gopkg.lock and Gopkg.toml
839052c generate go.mod and go.sum
a31c98b remove changelog files that have already been released (#49)
```

## Repo: velero-plugin-for-aws

**NO CHANGES**

## Repo: velero-plugin-for-gcp

**NO CHANGES**

## Repo: restic

**NO CHANGES**

## Repo: hook-runner

**NO CHANGES**

## Repo: must-gather

```
ce3a497 Added pprof payload collection scripts (#7)
```
