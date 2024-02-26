pipeline {
    agent any
    tools {
        maven 'm3'
    }
    stages {
        stage('check out') {
            steps {
                git 'https://github.com/vinaypro5/hello-world-java.git'
            }
        }
        stage ('build') {
            steps {
                sh 'mvn clean package'
            }
        }
    }
}
