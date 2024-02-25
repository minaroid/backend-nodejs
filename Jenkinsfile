pipeline {
    
    agent any
    
    environment {
        NEW_VERSION = '1.1.0'
        // SERVER_CREDENTIALS = credentials('Github-cre')
    }

    stages {
      
      stage("Build"){
        
        steps {     
            echo "Building the app.., ${NEW_VERSION}"
            withCredentials([usernamePassword: (credentialsId: "Github-cre", usernameVariable: USERNAME, passwordVariable: PASSWORD)]){
            echo "Building the app.., ${USERNAME} - ${PASSWORD}"

            }

        }
 
      } 

    }

    // post {
        
        // always {
        //     //
        // }

        // success {
        //     //
        // }

        // failure {
        //     //
        // }

    // }
}