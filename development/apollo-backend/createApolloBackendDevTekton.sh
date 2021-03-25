oc project development
# oc new-app --name=myeccom-tekton-backend openshift/nodejs:latest~https://github.com/stephmen/ApolloBackend
oc patch svc myeccom-tekton-backend -p '{"spec": {"ports": [{"name": "4444-tcp","port": 4444,"protocol": "TCP", "targetPort": 4444}]}}'
oc expose service myeccom-tekton-backend --port=4444
# oc set env deployment/myeccom-tekton-backend PRISMA_ENDPOINT=http://prisma-development.apps-crc.testing
# oc set env deployment/myeccom-tekton-backend PRISMA_SECRET=prisma
oc set env deployment/myeccom-tekton-backend WHITELIST=""http://prisma-development.apps-crc.testing", "prisma-development.apps-crc.testing", "http://172.25.79.194:4466", 172.25.169.154, "myeccom-tekton-backend.apps-crc.testing", "http://myeccom-tekton-backend.apps-crc.testing", 172.25.34.69, "myeccom-tekton.apps-crc.testing", "http://myeccom-tekton.apps-crc.testing", "http:checkout.stripe.com/""
oc set env deployment/myeccom-tekton-backend PRISMA_ENDPOINT=http://172.25.79.194:4466
oc set env deployment/myeccom-tekton-backend PRISMA_SECRET=prisma
oc set env deployment/myeccom-tekton-backend APP_SECRET=prisma
oc set env deployment/myeccom-tekton-backend STRIPE_SECRET=sk_test_bh0QAXn1x8LhONmDvaHLDKAu00sCpS9yxT
oc set env deployment/myeccom-tekton-backend PORT=4444
oc set env deployment/myeccom-tekton-backend FRONTEND_URL=http://myeccom-tekton.apps-crc.testing
oc set env deployment/myeccom-tekton-backend FRONTEND_IP=http://172.25.217.141:7777
oc set env deployment/myeccom-tekton-backend BACKEND_URL=http://myeccom-tekton-backend-dev.apps-crc.testing
oc set env deployment/myeccom-tekton-backend BACKEND_IP=http://172.25.164.177:4444
oc set env deployment/myeccom-tekton-backend MAIL_HOST=smtp.mailtrap.io
oc set env deployment/myeccom-tekton-backend MAIL_PORT=2525
oc set env deployment/myeccom-tekton-backend MAIL_USER=2af1c2bddf929f
oc set env deployment/myeccom-tekton-backend MAIL_PASS=74d73a20a356dc