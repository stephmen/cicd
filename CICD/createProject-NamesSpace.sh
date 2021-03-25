oc login -u developer -p developer
oc new-project cicd --display-name='CICD Jenkins' --description='CICD Jenkins'
oc new-project development --display-name='Development'    --description='Development'
oc new-project testing --display-name='Testing' --description='Testing'
oc new-project production --display-name='Production' --description='Production'
