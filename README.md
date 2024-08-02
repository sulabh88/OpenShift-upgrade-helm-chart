# helm-chart-to-upgrade-ocp4-cluster

This repository contains a Helm chart which can be used to upgrade ocp4 cluster using RedHat provided upgrade image 



### How to install

Log into the cluster you want to manipulate using the oc command:
```
$ oc login https://api.<clustername>.example.com:6443
```

Add the Odyssey Helm Repository
```
$ helm repo add cluster-upgrade $REPO_URL
```

Deploy the helm chart to upgrade using
```
 helm install cluster-upgrade --namespace cluster-upgrade --create-namespace helm/cluster-upgrade
```
Please have a look at the [values.yaml](values.yaml) for more details

```
run oc get clusterversion
```


### How to upgrade  OCP4 Cluster manually 
 
To upgrade OCP4 cluster manually  please follow the [OCP4 Cluster Upgrade](https://docs.redhat.com/en/documentation/openshift_container_platform/4.7/html-single/updating_clusters/index#update-configuring-image-signature ) 

### Important inputs for this helm chart 
The following information is to upgrade cluster which is defined in values.yaml

| Parameter     |  Value        |  Description |
| ------------- | -------------------- | -------- |
| configMap.DIGESTALGO     | sha256        | Please see the above linked documentation on how to obtain this value |
|configMap.DIGEST_ENCODED | 0708475f51e969dd9e6902d958f8ffed668b1b9c8d63b6241e7c9e40d9548eee | Please see the above linked documentation on how to obtain this value |
|configMap.SIGNATURE_BASE64 ||Please see the above linked documentation on how to obtain this value|


### An example of configMap 
To update a cluster we need to create an image signature config map that contains the signatures of the release images that you use. 
**_NOTE:_** This chart is responsible to create a configMap. 

```
apiVersion: v1
kind: ConfigMap
metadata:
  name: release-image-${OCP_RELEASE_NUMBER}
  namespace: openshift-config-managed
  labels:
    release.openshift.io/verification-signatures: ""
binaryData:
  ${DIGEST_ALGO}-${DIGEST_ENCODED}: ${SIGNATURE_BASE64}
```

### For more details please follow 
* https://docs.openshift.com/container-platform/4.8/updating/updating-restricted-network-cluster.html
* https://docs.openshift.com/container-platform/4.7/updating/updating-restricted-network-cluster.html

