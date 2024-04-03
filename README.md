# Node.js App Deployment to AWS EC2 with Jenkins / CircleCi

This repository contains configurations and scripts to deploy a simple Node.js application to an AWS EC2 instance, The deployment process is automated with Jenkins / CircleCi pipelines and includes steps for building the application, building docker image, and deploying the application.

## Application Overview

The Node.js application in this repository serves as a simple example to demonstrate deployment automation with Jenkins / CircleCi. It includes basic functionality and can be extended or modified as needed.

## Pipeline

The  Jenkins / CircleCi pipeline defined in this repository automates the deployment process. It includes stages for building the application, building docker image, and deploying the application.


## Prerequisites - Jenkins

Before deploying the application using Jenkins, ensure you have the following prerequisites:

- Jenkins server installed and configured or CircleCi connected to your repo
- AWS credentials configured in Jenkins for EC2 instance provisioning
- Access to an AWS EC2 instance for deployment
- Node.js and npm installed on the EC2 instance

## Deployment Steps - Jenkins

To deploy the application to an AWS EC2 instance using Jenkins, follow these steps:

1. Create a new Jenkins pipeline job and configure it to use the Jenkinsfile provided in this repository.

2. Trigger the pipeline job to start the deployment process.

3. Jenkins will execute the pipeline stages, including building the application, provisioning the EC2 instance, and deploying the application to the instance.

4. Once the deployment is complete, verify that the application is accessible on the EC2 instance's public IP address or domain name.


## Prerequisites - CircleCi

Before deploying the application using CircleCi, ensure you have the following prerequisites:

- CircleCi Account Connected to your repository

## Deployment Steps - CircleCi

To deploy the application to an AWS EC2 instance using CircleCi, follow these steps:

- CircleCi will execute the pipeline stages, including building the application, provisioning the EC2 instance, and deploying the application to the instance.


## Contributing

Contributions to improve or extend this example repository are welcome! If you have suggestions, bug reports, or feature requests, please open an issue or submit a pull request on GitHub.

## License

This project is licensed under the [MIT License](LICENSE).



