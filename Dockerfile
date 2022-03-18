pipeline {
     agent any
    
    stages {
    
        stage('gitclone') {
            
            steps {
                git 'https://github.com/Sk20kaushik/project.git'
            }
        }        
       stage('Build maven'){
           steps {
               checkout{[$class: 'GitSCM', branches: [[name: '*/main']], extentions: [], userRemoteConfigs: [[credentialsId:]}
               sh "mvn -Dmaven.test.failure.ignore-true clean package"
  } 
                   
          }
       
         }    
      }
  }
     
 
