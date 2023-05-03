pipeline {
	agent any
	environment {
	registry = "kastguru/sample"
   	registryCredential = 'Docker'
	dockerImage = 'https://registry.hub.docker.com'
	}
	stages {
		stage ('Checkout') {
			steps {
				checkout scm
				echo ('Checkout Successful')
			}
		}
		
		stage ('Create a Docker Image') {
			steps {
				script {
				dockerImage.build registry + ":$BUILD_NUMBER"
				}
			}
		}
		stage('Deploy Image') {
 		 steps{    script {
    		  docker.withRegistry( '', registryCredential ) {
        	  dockerImage.push()
      }
    }
  }
}
	}
		}
