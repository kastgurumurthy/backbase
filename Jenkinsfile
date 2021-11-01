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
				script {
				docker.build("kastgurumurthy/Backbase-Task/sample.war")
				}
			}
		}
	}
}
