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
      
      stage("Init"){
        steps { 
            script {
                echo "Install dependacies.."
                sh 'npm i'
            }
        }
      } 

      stage("Build"){
        steps { 
            script {
                echo "Building the app.."
                sh 'npm run build'
            }
        }
 
      } 

      stage("Build Docker Image"){
        steps { 
            script {
                echo "Build docker image.."           
                withCredentials([usernamePassword(credentialsId: 'DOCKERHUB', passwordVariable: 'PASSWORD', usernameVariable: 'USERNAME')]) {
                    sh 'docker build -it minaroid/nodejs-jenkins:1.0 .'
                    sh "echo $PASSWORD | docker login -u $USERNAME --password-stdin"
                }
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