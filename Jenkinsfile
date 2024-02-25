pipeline {
    
    agent any
    
    environment {
        NEW_VERSION = '1.1.1'
        // SERVER_CREDENTIALS = credentials('Github-cre')
    }

    tools {
        nodejs 'Node-18.1.0' 
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
                    sh "docker build -t minaroid/nodejs-jenkins:$NEW_VERSION ."
                    sh "echo $PASSWORD | docker login -u $USERNAME --password-stdin"
                    sh "docker push minaroid/nodejs-jenkins:$NEW_VERSION"
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