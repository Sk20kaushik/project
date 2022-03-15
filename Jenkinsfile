pipeline {
    agent any

    stages {
        
        stage('Validate') {
            steps {
                sh 'mvn validate'
            }
        }
        stage('Build') {
            steps {
                sh 'mvn package'
            }
        }
        stage('Test') {
            steps {
                sh 'mvn test'
            }
        }
        stage('Deploy') {
            steps {
                agent {
        docker { image 'node:16.13.1-alpine' }
    }
    stages {
        stage('Test') {
           steps {
                sh 'node --version'
                
            }
        }

    }
}
