pipeline {
     agent any
    
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
      }
  }
     
 
