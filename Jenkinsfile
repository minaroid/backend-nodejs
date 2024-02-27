def getEnvName(branchName) {
    if("deployments/production".equals(branchName)) {
        return "production";
    } else if ("deployments/staging".equals(branchName)) {
        return "staging";
    } else {
        return "development";
    }
}


pipeline {
    
    agent any
    
    environment {
        ENVIROMENT = getEnvName(env.BRANCH_NAME)
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

      stage("Test"){
         when{
            expression {
                ENVIROMENT == 'development'
            }
         }
         steps { 
            script {
                echo "Run Test..."
                sh 'npm run test'
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
        environment {
            IMAGE ="minaroid/nodejs-jenkins:$ENVIROMENT-1.0.$BUILD_NUMBER"
            LATEST_IMAGE="minaroid/nodejs-jenkins:$ENVIROMENT-latest"
        }

        steps { 
            script {
                echo "Build docker image.."           
                withCredentials([usernamePassword(credentialsId: 'DOCKERHUB', passwordVariable: 'PASSWORD', usernameVariable: 'USERNAME')]) {
                    sh "docker build -t $IMAGE ."
                    sh "echo $PASSWORD | docker login -u $USERNAME --password-stdin"
                    sh "docker push $IMAGE"
                    sh "docker tag $IMAGE $LATEST_IMAGE"
                    sh "docker push $LATEST_IMAGE"
                }
            }
        }
      } 

      stage("Deploy - Development"){
        when{
           expression {
               ENVIROMENT == 'development'
            }
        }

        steps { 
            script {
                echo "Depolyment - Development ..."           
            }
        }
      } 

      stage("Deploy - Staging"){
        when{
           expression {
               ENVIROMENT == 'staging'
           }
        }
        steps { 
            script {
                echo "Depolyment - Staging ..."           
            }
        }
      } 

      stage("Deploy - Production"){
        when{
           expression {
               ENVIROMENT == 'production'
           }
        }

        steps { 
            input message: "Deploy to production?"
            script {
                echo "Depolyment - Production ..."           
            }
        }
      } 

    }

    post {
        success { 
            script {
                withCredentials([usernamePassword(credentialsId: 'GITHUB', passwordVariable: 'PASSWORD', usernameVariable: 'USERNAME')]) {
                    sh 'git config --global user.email "jenkins@example.com"'
                    sh 'git config --global user.email "Jenkins"'
                    sh 'echo "Jenkins-docker" >> koko.md'
                    sh "git add ./koko.md"
                    sh 'git commit -m "ci: version bump"'
                    sh 'git push'

                    // sh "echo $PASSWORD | docker login -u $USERNAME --password-stdin"
                    // sh "docker push $IMAGE"
                    // sh "docker tag $IMAGE $LATEST_IMAGE"
                    // sh "docker push $LATEST_IMAGE"
                }
            }
        }
    }

}