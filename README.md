# fargate-demo


Amazon ECR offers new customers 500MB-month of storage for one year.

build docker image(https://runnable.com/docker/java/dockerize-your-java-application):
docker build -t demo-docker-aws .

https://itnext.io/run-your-containers-on-aws-fargate-c2d4f6a47fda
To run a container, 
1> we must host our docker image on AWS, 
2> we need a Cluster to run services, 
3> a Task-Definition which defines what container to run and how to run it in a service. 
4> We also need the service itself and a load balancer to point traffic from the web to our service in the cluster. 
5> Finally we must define some security policies for our cluster and load balancer

hosting docker image on AWS(create a docker image and push it to ECR):

Make sure that you have the latest version of the AWS CLI and Docker installed. For more information, see Getting Started with Amazon ECR .
Use the following steps to authenticate and push an image to your repository. For additional registry authentication methods, including the Amazon ECR credential helper, see Registry Authentication .
Retrieve an authentication token and authenticate your Docker client to your registry.
Use the AWS CLI:
aws ecr get-login-password --region us-east-2 | docker login --username AWS --password-stdin 163952739927.dkr.ecr.us-east-2.amazonaws.com

Note: If you receive an error using the AWS CLI, make sure that you have the latest version of the AWS CLI and Docker installed.
Build your Docker image using the following command. For information on building a Docker file from scratch see the instructions here . You can skip this step if your image is already built:
docker build -t demo-docker-aws .

After the build completes, tag your image so you can push the image to this repository:
docker tag demo-docker-aws:latest 163952739927.dkr.ecr.us-east-2.amazonaws.com/demo-docker-aws:latest

Run the following command to push this image to your newly created AWS repository:
docker push 163952739927.dkr.ecr.us-east-2.amazonaws.com/demo-docker-aws:latest
