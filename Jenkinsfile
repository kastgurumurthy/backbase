pipeline {
	agent any
	environment {
	registry = "kastguru/sample"
   	registryCredential = 'dockerhub'
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
				docker.build registry + ":$BUILD_NUMBER"
					echo ('Image created successfully')
				}
			}
		}
		stage('Deploy Image') {
 		 steps{    script {
    		  docker.withRegistry( '', registryCredential ) {
        	  dockerImage.push()
			  echo ('Image pushed to docker hub successfully')
      }
    }
  }
}
	}
		}
