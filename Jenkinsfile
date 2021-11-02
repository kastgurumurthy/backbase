pipeline {
	agent any
	environment {
	registry = "kastguru/sample"
   	registryCredential = 'dockerhub'
	dockerImage = ''
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
				}
			}
		}
		stage('Deploy Image') {
 		 steps{    script {
    		  docker.withRegistry( 'https://registry.hub.docker.com', registryCredential ) {
        	  dockerImage.push()
      }
    }
  }
}
	}
}
