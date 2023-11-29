pipeline{
    agent any
    stages{
        stage('Code fetching'){
            steps{
                checkout scm
            }
        }
        stage('Docker Image Build'){
            steps{
                script{
                    sh 'docker build -t helloworld/node:latest -f dockerfile . '
                }
            }
        }
        stage('Push to Docker Hub'){
            steps{
                script {
                    withCredentials([string(credentialsId: 'dockerhub', variable: 'dockerhubpasswd')]) {
                    sh "echo \$dockerhubpasswd | docker login --username sreejitheyne --password-stdin"
                     }
                     sh 'docker push helloworld/node:latest'
                 }
            }
        }
    }
}
