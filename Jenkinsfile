pipeline {
  environment {
    registry = "21121997/nodejs_akanksha"
    registryCredential = 'akku-cred'
    dockerImage = ''
  }
  agent any
  stages {
    stage('Cloning Git') {
      steps {
	    git branch: 'main', credentialsId: 'bd8cbf0a-a257-422d-90dd-ac9175393dac', url: 'https://github.com/OCTO01032020-araju/akku-nodejs.git'
      }
    }
    stage('Building image') {
      steps{
        script {
          dockerImage = docker.build registry + ":$BUILD_NUMBER"
        }
      }
    }
    stage('Deploy Image') {
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