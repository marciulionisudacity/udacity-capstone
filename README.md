# TODO Application
This is a TODO application written in Python that uses a SQLite database to store the data about todos.

## Project Overview
The main goal of this project is to create a CI/CD pipeline that ensures the quality of the application code and automates the deployment process using Docker and Kubernetes. The pipeline includes linting the application code, building a Docker image, storing it in Amazon ECR, and deploying it to a Kubernetes cluster.

## CI/CD Pipeline
The CI/CD pipeline consists of the following steps:

* Linting: The application code and the Dockerfile are checked against a linter to ensure code quality and best practices.
* Building Docker Image: The Docker image for the application is built using the provided Dockerfile. The image is then pushed to Amazon ECR using the `aws-ecr/build-and-push-image` job from Circle CI.
* Kubernetes Cluster: The infrastructure for the Kubernetes cluster can be created using the CloudFormation template provided in the project files or by using this command `eksctl create cluster --name capstone --nodes=2`. The cluster must be set up beforehand as the pipeline does not handle cluster creation.
* Deployment: The built Docker image is deployed to the Kubernetes cluster. The pipeline verifies the success of the deployment and performs a rollback to the previous version in case of failure.

## Prerequisites
Before running the pipeline, make sure you have the following prerequisites in place:

* An AWS account with appropriate permissions to create resources like ECR repositories and EKS clusters.
* Circle CI account with the AWS context set up to access the required AWS services.

## Getting Started
To get started with the TODO application and the CI/CD pipeline, follow these steps:

* Clone this repository to your local machine.
* Set up the AWS context in Circle CI to grant access to the required AWS services.
* Modify the necessary configuration files, such as the Dockerfile and CloudFormation template, according to your project requirements.
* Commit and push your changes to trigger the CI/CD pipeline.
