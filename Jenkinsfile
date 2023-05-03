pipeline {
environment {
registry = "kastguru/task"
registryCredential = 'Docker'
dockerImage = ''
} agent any
stages {
		stage ('Checkout') {
			steps {
				checkout scm
				echo ('Checkout Successful')
			}
		}
stage('Building our image') {
steps{
script {
dockerImage = docker.build registry + ":$BUILD_NUMBER"
}
}
}
stage('Deploy our image') {
steps{
script {
docker.withRegistry( '', registryCredential ) {
dockerImage.push()
}
}
}
}

}
}
