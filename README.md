# Helm and Jenkins

1. Download the files to local repo.
2. Install helm and set path in environmental variables.
3. helm install {name} {workspace path}
4. Get public external ip from EC2 instance.
5. Provide {public ip}:30000 to access the jenkins service.
6. Provide admin password for jenkins copying from kubectl logs <pod name>
7. Create docker hub credentials in jenkins.
8. Install cloudbees docker build and publish plugin, Docker Pipeline plugin, Docker plugins in Jenkins.
9. docker.build("<Provide your docker repo>") in Jenkins file.
10. Jenkins->Global System Configuration-> Add Github to auto installation.
11. Create a multi branch pipeline and add github endpoint, save and run the job.
  
  
  
  I couldn't test much on the CICD pipeline due to the environment issues.
