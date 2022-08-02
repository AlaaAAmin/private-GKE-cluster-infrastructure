# Jenkins

## Description

- Jenkins custom docker image and kubernetes deployment and configuration files


## Requirments

1. Linux based, Windows or Mac os
2. Docker
3. Any kubernetes cluster or minikube


## Image overview

1. jenkins image Dockerfile based on the official jenkins docker image
2. plugins file that will be used to install the specified jenkins plugins
3. casc file to create a user, choose authorization strategy and create credentials
4. the credentials must be provided through environment variables

## Kubernetes files overview

1. jenkins secrets for the docker image credentials
2. jenkins deployment file
3. jenkins persistent volume and persistent volume claim for the jenkins_home dirctory
4. jenkins service to expose an endpoint for jenkins


## Steps

- created the Dockerfile  
![Docker file](./pics/docker.png "Docker file")  
- configuration as code file casc.yaml  
![casc](./pics/casc.png "configuration file") 
- plugins file  
![casc](./pics/plugins.png "configuration file") 
- built the image using `docker image build -t alaaamin/jenkins:v1.0.5full .`
- pushed the image to Docker Hub `docker push alaaamin/jenkins:v1.0.5full`
- created kuberenets files for namespace, deployment, service, secrets, persistent volume and persistent volume claim
- opened the terminal
- run `echo "your-username" | base64`
- run `echo "your-password" | base64`
- wrote the values in jenkins-secrets.yaml file
- tested the files locally using `kubectl apply -f jenkins-ns.yaml` to create the namespace
then `kubectl apply -Rf .` to run all of the resources
- after insuring everything is working i uploaded the files to the bastion vm named gke-bastion using  
`gcloud compute scp --recurse ./deployment/ gke-bastion:~/ --project="versatile-bolt-354107"`
- ssh into the vm using the command  
`gcloud compute ssh --zone "europe-west2-a" "gke-bastion"  --tunnel-through-iap --project "versatile-bolt-354107"`
- changed the directory to the deployment directory then run `kubectl apply -f jenkins-ns.yaml` to create the namespace then `kubectl apply -Rf .` to run all of the resources
- run `kubectl get services -n jenkins-ns` to get the load balancer external ip.
- the result  
![login page](./pics/ui.png "jenkins login page")
- configured the bastion server as a slave to jenkins
- run `sudo gpasswd -a $USER docker` and `newgrp docker` to make docker usable without `sudo` command
- 

## Author

[Alaa A. Amin](https://www.linkedin.com/in/alaaamin-swe/)
