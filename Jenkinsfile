pipeline {
  agent any
  tools {
    maven 'm3'
  }
  stages {
    stage('checkout') {
      steps {
        git 'https://github.com/vinaypro5/hello-world-java.git'
      }
    }
    stage('build-maven') {
      steps {
        sh 'mvn clean package' // Using 'sh' instead of 'bat'
      }
    }
    stage('SonarQube') {
      steps {
        sh 'mvn clean verify sonar:sonar \
          -Dsonar.projectKey=Java-Todo \
          -Dsonar.projectName=Java-Todo \
          -Dsonar.host.url=http://localhost:9000 \
          -Dsonar.token=sqp_b6ad85fa970b39d8236a8a4803668cf703e65090'
      }
    }
  }
}
