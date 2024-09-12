
oc delete application rhel-servers-playground -n openshift-gitops
oc delete application quarkus-api -n openshift-gitops

oc create -f ./argocd/rhel9-server-app.yaml
oc create -f ./argocd/api-app.yaml

oc extract secrets/openshift-gitops-cluster -n openshift-gitops --keys=admin.password --to -


