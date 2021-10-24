node {

	def app 
	stage ('Checkout from git hub') {
	
    checkout scm
	}
	
	stage ('Initialize') {
		def dockerHome = tool 'myDocker'
		env.PATH = "${dockerHome}/bin:${env.PATH}" 
			
	}
	
	stage ('Build image') {
	
	app = docker.build("test.txt")
	}
	
	stage ('Push image') {
    docker.withRegistry('https://registry.hub.docker.com', 'Dockerhub') {

        def customImage = docker.build("kastguru/app_backbase")

        customImage.push()
		}
    }
}
