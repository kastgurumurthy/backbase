pipeline {
	agent any
	environment {
	registry = "kastgurumurthy/sample"
   	registryCredential = 'dockerhub'
	}
	stages {
		stage ('checkout') {
			steps {
				checkout scm
				echo ('checkout successful')
			}
		}
		
		stage ('create a docker image') {
			steps {
				script {
				docker.build registry + ":$BUILD_NUMBER"
				}
			}
		}
	}
}
