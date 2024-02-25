pipeline {
    
    agent any
    
    enviroment {
        NEW_VERSION = '1.1.0'
        SERVER_CREDENTIALS = credentials('Github-cre')
    }

    stages {
      
      stage("Build"){
        
        steps {     
            echo "Building the app.., ${NEW_VERSION}"
            echo "Building the app.., ${SERVER_CREDENTIALS}"

        }
 
      } 

    }

    post {
        
        always {
            //
        }

        success {
            //
        }

        failure {
            //
        }

    }
}