node {

	def app 
	stage ('Checkout from git hub') {
	
    checkout scm
		echo 'Checkout done'
	}
	
	
	stage ('Build image') {
		//sh 'yum install docker'
		//echo 'Docker installed successfully'
	app = docker.build("kastguru/sample" + ":$BUILD_NUMBER")
		echo 'Image created'
	}
	
	stage ('Push image') {
    docker.withRegistry('https://registry.hub.docker.com', 'docker') {

        def customImage = docker.build("kastguru/sample:latest")

        customImage.push()
	    echo 'Pushed to hub'
		}
    }
}

