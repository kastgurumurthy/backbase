pipeline {
  agent {
    dockerfile true
  }
  stages {
    stage ('Initialize') {
	    steps{
		sh "printenv"
	    }	
	}
    stage ('Build image') {
      steps {
      echo 'Image built'
      }
      }
    }
}
