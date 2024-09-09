

oc create -f ./argocd/vms-app.yaml


oc extract secrets/openshift-gitops-cluster -n openshift-gitops --keys=admin.password --to -


