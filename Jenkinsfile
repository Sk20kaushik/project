pipeline {
    agent any
  
    tools
    {
       maven "Maven"
    }
 stages {
      stage('checkout') {
           steps {
             
                git branch: 'master', url: 'https://github.com/Sk20kaushik/project.git'
             
          }
        }
   stage('Execute Maven') {
           steps {
             
                sh 'mvn package'             
          }
        }
        

  stage('Docker Build and Tag') {
           steps {
              
                sh 'docker build -t Dockerpipeline:latest .' 
                sh 'docker tag Dockerpipeline kaushik20/Dockerpipeline:latest'
                //sh 'docker tag Dockerpipeline kaushik20/Dockerpipeline:$BUILD_NUMBER'
               
          }
        }
     
  stage('Publish image to Docker Hub') {
          
            steps {
        withDockerRegistry([ credentialsId: "dockerHub", url: "" ]) {
          sh  'docker push kaushik20/Dockerpipeline:latest'
        //  sh  'docker push kaushik20/Dockerpipeline:$BUILD_NUMBER' 
        }
                  
          }
        }
     
      stage('Run Docker container on Jenkins Agent') {
             
            steps 
      {
                sh "docker run -d -p 8080:8080 kaushik20/Dockerpipeline"
 
            }
        }
 stage('Run Docker container on remote hosts') {
             
            steps {
                sh "docker -H ssh://jenkins@172.31.38.76 run -d -p 8080:8080 kaushik20/Dockerpipeline"
 
            }
        }
    }
  }

