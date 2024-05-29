pipeline {
    agent any
    tools {
        maven 'm3'
    }
    environment {
        DOCKER_IMAGE = 'vinaypro5/hello-world-java' // Replace with your actual Docker image name
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
                dir('hello-world-java') {
                    sh "docker build -t $DOCKER_IMAGE ."
                }
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
