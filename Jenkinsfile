pipeline {
  agent {
    dockerfile true
  }
  stages {
    stage ('Initialize') {
	    steps{
		def dockerHome = tool 'myDocker'
		env.PATH = "${dockerHome}/bin:${env.PATH}" 
	    }	
	}
    stage ('Build image') {
      steps {
      echo 'Image built'
      }
      }
    }
}
