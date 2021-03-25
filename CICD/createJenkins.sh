oc project cicd
oc new-app jenkins-ephemeral
oc set resources dc/jenkins --limits memory=512Mi 

