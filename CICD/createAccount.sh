oc policy add-role-to-user edit system:serviceaccount:cicd:jenkins -n development
oc policy add-role-to-user edit system:serviceaccount:cicd:jenkins -n testing
oc policy add-role-to-user edit system:serviceaccount:cicd:jenkins -n production
oc policy add-role-to-group system:image-puller system:serviceaccounts:testing -n development
oc policy add-role-to-group system:image-puller system:serviceaccounts:production -n development