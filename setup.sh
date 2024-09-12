
oc delete application virtual-machines -n openshift-gitops
oc delete application quarkus-api -n openshift-gitops
oc delete application nodejs-frontend -n openshift-gitops

oc create -f ./argocd/virtual-machines-app.yaml
oc create -f ./argocd/quarkus-api-app.yaml
oc create -f ./argocd/nodejs-frontend-app.yaml

echo "Argo admin password is: "
oc extract secrets/openshift-gitops-cluster -n openshift-gitops --keys=admin.password --to -


