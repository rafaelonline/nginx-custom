pipeline {
  environment {
    registry = "rconceicaobr/nginx-jenkins2"
    registryCredential = 'dockerhub'
    dockerImage = ''
  }
  agent {
      label 'docker-slave'
  }
  stages {
    stage('Cloning Git') {
      steps {
        git 'https://github.com/rafaelonline/nginx-custom.git'
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
    stage('Remove Unused docker image') {
      steps{
        sh "docker rmi $registry:$BUILD_NUMBER"
      }
    }
  }
}