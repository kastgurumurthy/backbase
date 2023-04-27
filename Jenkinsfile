node {

	def app 
	stage ('Checkout from git hub') {
	
    checkout scm
	}
	
	
	stage ('Build image') {
	app = docker.build("kastguru/sample" + ":$BUILD_NUMBER")
	}
	
	stage ('Push image') {
    docker.withRegistry('https://registry.hub.docker.com', 'dockerhub') {

        //def customImage = docker.build("kastguru/sample")

        customImage.push()
		}
    }
}
