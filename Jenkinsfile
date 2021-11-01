pipeline {
	agent any
	environment {
	registry = "kastguru/sample"
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
