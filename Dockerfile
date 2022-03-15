pipeline {
    
    agent none 
   
    environment {
        DOCKERHUB_CREDENTIALS=credentials('14607bb0-0530-435d-b03d-f1bd8cb1bbb8')
    }
    
    stages {
    
        stage('gitclone') {
            
            steps {
                git 'https://github.com/Sk20kaushik/project.git'
            }
        }        
        
        stage('Build') {
        
            steps {
                sh 'docker build -t kaushik20/project1-pipeline:latest .'
            }
        }
        
        stage('Login') {
        
            steps {
                sh 'echo $DOCKERHUB_CREDENTIALS_PSW | docker login -u $DOCKERHUB_CREDENTIALS_USR --password-stdin'
            }
        }
        
        stage('push') {
        
            steps {
                sh 'docker push kaushik20/project1-pipeline:latest'
            }    
        }
     }
     
     post {
          always {
              sh 'docker logout'
          }
    }
    
}    
