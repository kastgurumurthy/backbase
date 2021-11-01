pipeline {
	agent any
	
	stages {
		stage ('checkout') {
			steps {
				git branch: 'master', url: 'https://github.com/kastgurumurthy/backbase.git'
				echo ('checkout successful')
			}
		}
	}
}
