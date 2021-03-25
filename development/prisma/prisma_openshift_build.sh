oc project development
oc apply -f mongo-persistentvolumeclaim.yaml
oc apply -f mongo-claim1-persistentvolumeclaim.yaml
oc apply -f mongo-claim2-persistentvolumeclaim.yaml
oc apply -f mongo-deploymentconfig.yaml --validate=false 
oc apply -f mongo-service.yaml
oc apply -f mongo-imagestream.yaml 
oc apply -f prisma-deploymentconfig.yaml
oc apply -f prisma-service.yaml
oc apply -f prisma-imagestream.yaml
oc expose service/mongo
oc expose service/prisma
