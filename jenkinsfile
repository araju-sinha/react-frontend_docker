pipeline {
  environment {
    registry = "araju024/new_imge"
    registryCredential = 'araju_docker'
    dockerImage = ''
  }
  agent any
  stages {
    stage('Cloning Git') {
      steps {
	    git credentialsId: 'bd8cbf0a-a257-422d-90dd-ac9175393dac', url: 'https://github.com/OCTO01032020-araju/node_try.git'
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
