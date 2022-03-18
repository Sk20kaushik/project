pipeline {
     agent any
    
    stages {
    
        stage('gitclone') {
            
            steps {
                git 'https://github.com/Sk20kaushik/project.git'
            }
        }        
       stage('ContinuousBuild')
  {
            sh 'mvn package'
  } 
                   
          }
       
         }    
      }
  }
     
 
