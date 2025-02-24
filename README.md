### CRUD application mixing containers and VM's at Red Hat OpenShift

Purpose of this application is to provide basics of mixing containers and VM's forming one application.
As a delivery methode I chose Argo CD (Red Hat OpenShift GitOps) to make application declaratively manageged.

it's enough to login to your OCP cluster and run:

```./setup.sh```

then login to your Argo CD console to see applications.
Then sync'ing apps you see vm's, api and frontend getting instantiated at your cluster under ocp-virt-app namespace.


