oc project development
oc new-app --name=frontend openshift/nodejs:latest~https://github.com/stephmen/Frontend
oc expose service frontend
