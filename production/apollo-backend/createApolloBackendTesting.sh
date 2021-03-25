oc project production
oc new-app --name=apollo-backend openshift/nodejs:latest~https://github.com/stephmen/ApolloBackend
oc patch svc apollo-backend -p '{"spec": {"ports": [{"name": "4444-tcp","port": 4444,"protocol": "TCP", "targetPort": 4444}]}}'
oc expose service apollo-backend --port=4444
# oc set env deployment/apollo-backend PRISMA_ENDPOINT=http://prisma-production.apps.ocp.mpi.mb.local
# oc set env deployment/apollo-backend PRISMA_SECRET=prisma
oc set env deployment/apollo-backend WHITELIST=""http://prisma-production.apps.ocp.mpi.mb.local", "prisma-production.apps.ocp.mpi.mb.local", "http://172.30.232.98:4466", 172.30.52.150, "apollo-backend-production.apps.ocp.mpi.mb.local", "http://apollo-backend-production.apps.ocp.mpi.mb.local", 172.30.152.172, "myeccom-tekton-production.apps.ocp.mpi.mb.local", "http://myeccom-tekton-production.apps.ocp.mpi.mb.local", "http:checkout.stripe.com/""
oc set env deployment/apollo-backend PRISMA_ENDPOINT=http://172.30.232.98:4466
oc set env deployment/apollo-backend PRISMA_SECRET=prisma
oc set env deployment/apollo-backend APP_SECRET=prisma
oc set env deployment/apollo-backend STRIPE_SECRET=sk_test_bh0QAXn1x8LhONmDvaHLDKAu00sCpS9yxT
oc set env deployment/apollo-backend PORT=4444
oc set env deployment/apollo-backend FRONTEND_URL=http://myeccom-tekton-production.apps.ocp.mpi.mb.local
oc set env deployment/apollo-backend FRONTEND_IP=http://172.30.152.172:7777
oc set env deployment/apollo-backend BACKEND_URL=http://apollo-backend-production.apps.ocp.mpi.mb.local
oc set env deployment/apollo-backend BACKEND_IP=http://172.25.58.47:4444
oc set env deployment/apollo-backend MAIL_HOST=smtp.mailtrap.io
oc set env deployment/apollo-backend MAIL_PORT=2525
oc set env deployment/apollo-backend MAIL_USER=2af1c2bddf929f
oc set env deployment/apollo-backend MAIL_PASS=74d73a20a356dc
