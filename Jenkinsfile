node {

	def app 
	stage ('Checkout from git hub') {
	
    checkout scm
		echo 'Checkout done'
	}
	
	
	stage ('Build image') {
	app = docker.build("kastguru/sample" + ":$BUILD_NUMBER")
		echo 'Image created'
	}
	
	stage ('Push image') {
    docker.withRegistry('https://registry.hub.docker.com', 'docker-hub-credentials') {

        def customImage = docker.build("kastguru/sample:latest")

        customImage.push()
	    echo 'Pushed to hub'
		}
    }
}

