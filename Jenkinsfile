pipeline {
   agent any

   stages {
      stage('SCM') {
         steps {
            // Get some code from a GitHub repository
            git credentialsId: 'd1096f94-70cb-4942-ac85-443fae9bef54', url: 'https://github.com/oneaqi/JavaContainer.git'
                 
        }
      }
      
//      stage('Build image'){
//          steps{
//              // Run Maven on a Unix agent.
//              sh "docker build -t java_image ."        
//          }
//      }    

//      stage('Create and start container'){
//          steps{
//              // Run Maven on a Unix agent.
//              sh "docker run -itd --name myjava java_image"  
//              sh "docker start myjava"
//          }
//      } 

  
   }
}
