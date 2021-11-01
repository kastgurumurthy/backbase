pipeline {
	agent any
	def app
	
	stages {
		stage ('checkout') {
			steps {
				checkout scm
				echo ('checkout successful')
			}
		}
		
		stage ('create a docker image') {
			steps {
				app = docker.build("kastgurumurthy/Backbase-Task/sample.war")
			}
		}
	}
}
