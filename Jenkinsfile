pipeline {
    
    agent any
    
    environment {
        NEW_VERSION = '1.1.0'
        // SERVER_CREDENTIALS = credentials('Github-cre')
    }

    tools {
        nodejs 'Node-18.0.0' 
    }

    stages {      
      stage("Build"){
        steps { 
            script {
                echo "Building the app.."
                sh 'npm run build'
            }
            
            // withCredentials([usernamePassword(credentialsId: 'Github-cre', passwordVariable: 'PASSWORD', usernameVariable: 'USERNAME')]) {
            //     echo "Building the app.., ${USERNAME} - ${PASSWORD}"
            // }
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