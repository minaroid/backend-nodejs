# Node.js App Deployment to AWS EC2 with Jenkins

This repository contains configurations and scripts to deploy a simple Node.js application to an AWS EC2 instance using Jenkins. The deployment process is automated with Jenkins pipelines and includes steps for building the application, building docker image, and deploying the application.

## Application Overview

The Node.js application in this repository serves as a simple example to demonstrate deployment automation with Jenkins. It includes basic functionality and can be extended or modified as needed.

## Jenkins Pipeline

The Jenkins pipeline defined in this repository automates the deployment process. It includes stages for building the application, building docker image, and deploying the application.

## Prerequisites

Before deploying the application using Jenkins, ensure you have the following prerequisites:

- Jenkins server installed and configured
- AWS credentials configured in Jenkins for EC2 instance provisioning
- Access to an AWS EC2 instance for deployment
- Node.js and npm installed on the EC2 instance

## Deployment Steps

To deploy the application to an AWS EC2 instance using Jenkins, follow these steps:

1. Create a new Jenkins pipeline job and configure it to use the Jenkinsfile provided in this repository.

2. Trigger the pipeline job to start the deployment process.

3. Jenkins will execute the pipeline stages, including building the application, provisioning the EC2 instance, and deploying the application to the instance.

4. Once the deployment is complete, verify that the application is accessible on the EC2 instance's public IP address or domain name.

## Contributing

Contributions to improve or extend this example repository are welcome! If you have suggestions, bug reports, or feature requests, please open an issue or submit a pull request on GitHub.

## License

This project is licensed under the [MIT License](LICENSE).


aws ecr get-login-password --region us-east-1 | docker login --username AWS --password-stdin 321397881832.dkr.ecr.us-east-1.amazonaws.com
npm run build
docker build -t nodejs-express .
docker tag nodejs-express:development 321397881832.dkr.ecr.us-east-1.amazonaws.com/nodejs-express:development
docker push 321397881832.dkr.ecr.us-east-1.amazonaws.com/nodejs-express:development
aws ecs update-service --cluster development-ecs-cluster --service development-ecs-service --force-new-deployment

