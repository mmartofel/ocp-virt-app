
oc delete application rhel-servers-playground -n openshift-gitops
oc delete application quarkus-api -n openshift-gitops
oc delete application nodejs-frontend -n openshift-gitops

oc create -f ./argocd/rhel9-server-app.yaml
oc create -f ./argocd/api-app.yaml
oc create -f ./argocd/frontend-app.yaml

echo "Argo admin password is: "
oc extract secrets/openshift-gitops-cluster -n openshift-gitops --keys=admin.password --to -


