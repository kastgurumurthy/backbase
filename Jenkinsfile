pipeline {
	agent any
	
	stages {
		stage ('checkout') {
			steps {
				checkout scm
				echo ('checkout successful')
			}
		}
		
		stage ('create a docker image') {
			steps {
				sh 'docker build -t samplewebapp:latest .' 
                		sh 'docker tag samplewebapp kastgurumurthy/samplewebapp:latest'
			}
		}
	}
}
