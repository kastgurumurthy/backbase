node {

	def app 
	stage ('Checkout from git hub') {
	
    checkout scm
	}
	
	
	stage ('Build image') {
	app = docker.build("kastgurumurthy/Backbase-Task")
	}
	
	stage ('Push image') {
    docker.withRegistry('https://registry.hub.docker.com', 'Dockerhub') {

        def customImage = docker.build("kastguru/app_backbase")

        customImage.push()
		}
    }
}
