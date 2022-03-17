pipeline {
    
    agent {Lable='jenkins'}
    
    }
    
    stages {
    
        stage('gitclone') {
            
            steps {
                git 'https://github.com/Sk20kaushik/project.git'
            }
        }        
        
        stage('Build') {
        
            steps {
                sh 'sudo yum -y install java-1.8*'
                
            }
        }
        
        stage('install git') {
        
            steps {
                sh 'sudo yum -y install git'
            }
        }
        
        stage('install maven') {
        
            steps {
                sh 'sudo yum -y install maven'
            }    
        }
     }
     
 
