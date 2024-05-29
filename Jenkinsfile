pipeline {
    agent any
    tools {
        maven 'm3'
    }
    environment {
        DOCKER_IMAGE = 'vinaypro5/hello-world-java' // Replace with your actual Docker image name
        DOCKER_CREDENTIALS_ID = 'Docker'
    }
    stages {
        stage('Git check out') {
            steps {
                git 'https://github.com/vinaypro5/hello-world-java.git'
            }
        }
        stage('Maven Build') {
            steps {
                script {
                    sh 'mvn clean install'
                }
            }
        }
        stage('Docker Build') {
            steps {               
                    sh "docker build -t $DOCKER_IMAGE ."               
            }
        }
         stage('docker-login') {
            steps {
                withCredentials([string(credentialsId: DOCKER_CREDENTIALS_ID, variable: 'DOCKER_TOKEN')]) {
                    sh "echo $DOCKER_TOKEN | docker login -u vinaypro5 --password-stdin"
                }
            }
        }
        stage('docker-push') {
            steps {
                sh "docker push $DOCKER_IMAGE"
            }
        }
    }
    post {
        always {
            echo 'Pipeline finished.'
        }
        success {
            echo 'Pipeline succeeded!'
        }
        failure {
            echo 'Pipeline failed!'
        }
    }
}
