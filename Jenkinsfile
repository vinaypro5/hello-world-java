pipeline {
    agent any
    tools {
        maven "m3"
    }
    stages {
        stage('Git check out') {
            steps {
                git 'https://github.com/vinaypro5/hello-world-java.git'
            }
        }
        stage('maven-Build') {
            steps {
                script {
              sh 'mvn clean install' 

                }
            }
        }
    }
}
