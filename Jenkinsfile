pipeline {

  environment {
    PROJECT = "sequislife-pilot"
    APP_NAME = "sample"
    FE_SVC_NAME = "${APP_NAME}"
    CLUSTER = "cluster-1"
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
  - name: nodejs
    image: node:8
    command:
    - cat
    tty: true
  - name: gcloud
    image: 
    command:
    - cat
    tty: true
  - name: helm
    image:
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
     
