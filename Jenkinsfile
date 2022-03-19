pipeline {
  agent any

  stages {

    stage('Scan') {
      steps {
	  
        sh "curl -sOL https://github.com/aquasecurity/trivy/releases/download/v0.24.2/trivy_0.24.2_Linux-64bit.tar.gz"
        sh "tar -xvf trivy_0.24.2_Linux-64bit.tar.gz"
        sh 'trivy --no-progress --exit-code 1 --severity CRITICAL darinpope/java-web-app:latest'
      }
    }
  }
}
