pipeline {
	agent any
	environment {
	docker.withTool('docker'){
        docker.withRegistry('kastguru/sample','Akshan@2108') { 
      
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
