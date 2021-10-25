# Helm and Jenkins

1. Download the files to local repo.
2. Install helm and set path in environmental variables.
3. helm install <name> <workspace path>
4. kubectl get po -o wide and get the public ip.
5. <public ip>:30000 to access the jenkins service.
6. Provide admin password for jenkins copying from kubectl logs <pod name>
7. Create docker hub credentials in jenkins.
8. Install cloudbees docker build and publish plugin, Docker Pipeline plugin, Docker plugins in Jenkins.
