pipeline {
   agent any

   stages {
      stage('SCM') {
         steps {
            // Get some code from a GitHub repository
            git credentialsId: 'a55fbd81-8017-4f19-97d8-71947b4caf8e', url: 'https://github.com/oneaqi/JavaContainer.git'
                 
        }
      }
      
      stage('Build image'){
          steps{
              // Run Maven on a Unix agent.
              sh "docker build -t java_image ."        
          }
      }    

      stage('Create and start container'){
          steps{
              // Run Maven on a Unix agent.
              sh "docker run -itd --name myjava java_image"  
              sh "docker start myjava"
          }
      } 

  
   }
}
