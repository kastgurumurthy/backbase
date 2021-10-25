node {

	def dockerfile 
	stage ('Checkout from git hub') {
	
    checkout scm
	}
	
	stage ('Initialize') {
		def dockerHome = tool 'myDocker'
		env.PATH = "${dockerHome}/bin:${env.PATH}" 
			
	}
	
	stage ('Build image') {
	echo '=== Building Docker Image ==='
	dockerfile = docker.build("sample")
	}
	
	stage ('Push image') {
    docker.withRegistry('https://registry.hub.docker.com', 'Dockerhub') {

        def customImage = docker.build("<Provide your docker repo>")

        customImage.push()
		}
    }
}
