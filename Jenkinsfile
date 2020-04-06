pipeline {

  environment {
    PROJECT = "pro1-265115"
    APP_NAME = "nodejs"
    FE_SVC_NAME = "${APP_NAME}"
    CLUSTER = "jenkins"
    CLUSTER_ZONE = "us-central1-c"
    IMAGE_TAG = "gcr.io/${PROJECT}/${APP_NAME}:latest"
    JENKINS_CRED = "${PROJECT}"
  
  }

  agent {
    kubernetes {
      label 'nodejs'
      defaultContainer 'jnlp'
      yaml """
apiVersion: v1
kind: Pod
metadata:
labels:
  component: ci
spec:
  # Use service account that can deploy to all namespaces
  
  containers:
  - name: node
    image: us.gcr.io/pro1-265115/nodejs
    command:
    - cat
    tty: true

  - name: helm
    image: us.gcr.io/pro1-265115/helm3
    command:
    - cat
    tty: true
  
"""
}
  }
    stages {    
    stage('Install dependencies') {
      steps {
        sh 'npm install'
      }
    }
  }
 }

