node {

	def app 
	stage ('Checkout from git hub') {
	
    checkout scm
	}
	
	
	stage ('Build image') {
	sudo apt-get install docker.io
	app = docker.build("*.war")
	}
	
	stage ('Push image') {
    docker.withRegistry('https://registry.hub.docker.com', 'Dockerhub') {

        def customImage = docker.build("kastguru/app_backbase")

        customImage.push()
		}
    }
}
