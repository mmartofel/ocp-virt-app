
oc delete application rhel9-server -n openshift-gitops

oc create -f ./argocd/rhel9-server-app.yaml

oc extract secrets/openshift-gitops-cluster -n openshift-gitops --keys=admin.password --to -


