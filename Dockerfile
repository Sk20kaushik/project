pipeline {
     agent any
    
    stages {
    
        stage('gitclone') {
            
            steps {
                git 'https://github.com/Sk20kaushik/project.git'
            }
        }        
       stage('Build'){
  
            sh 'mvn package'
  } 
                   
          }
       
         }    
      }
  }
     
 
