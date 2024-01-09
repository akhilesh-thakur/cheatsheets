# Deploying a MERN App by using K3s and Docker

This documentation provides step-by-step instructions on deploying an Express.js application along with its frontend using K3s, a lightweight Kubernetes distribution, and Docker for containerization.

## Prerequisites

* Access to a Ubuntu VPS
* SSH into your Ubuntu VPS

## Install Docker and K3s

```bash
sudo curl https://releases.rancher.com/install-docker/20.10.sh | sh
sudo curl -sfL https://get.k3s.io | sh -s - --docker
```

## Deploy React App

Assuming your React.js Docker image is hosted at `akhileshthakur/weather-app-client:latest`.

### Step 1: Create Deployment

```bash
sudo kubectl create deployment weather-client --image=akhileshthakur/weather-app-client:latest --replicas=3
```
This command creates a deployment named `weather-client` with three replicas using the specified Docker image.


### Step 2: Expose React.js App Pods to the Outside World

```bash
sudo kubectl expose deployment weather-clinet --type=LoadBalancer --port=80 --target-port=3000
```
This command exposes the `weather-client` deployment to the outside world using a LoadBalancer service on port 80, with the target port set to 3000.

---

## Deploy Backend

Assuming your Backend Docker image is hosted at `akhileshthakur/weather-app-server:latest`.

### Step 1: Create Deployment

```bash
sudo kubectl create deployment weather-server --image=akhileshthakur/weather-app-server:latest --replicas=2
```
This command creates a deployment named `weather-server` with two replicas using the specified Docker image.


### Step 2: Expose Express.js App Pods to the Outside World

```bash
sudo kubectl expose deployment weather-server --type=LoadBalancer --port=3000
```
This command exposes the `weather-server` deployment to the outside world using a LoadBalancer service on port 80, with the target port set to 3000.

### Step 3: Retrieve External IP for Express.js App
Wait for the external IP to be assigned:

```bash
sudo k3s kubectl get services
```
Look for the external IP under the EXTERNAL-IP column. Once assigned, you can access your Express.js app using that IP and port 3000.

---

## Scale Deployments

Scale the number of pods for the deployments based on your application's requirements.

1. Scale Frontend Deployment

```bash
sudo kubectl scale deployment weather-client --replicas=5
```

2. Scale Express.js App Deployment

```bash
sudo kubectl scale deployment weather-server --replicas=3
```

## Conclusion

That's it! You now have successfully deployed your MERN Application on a Server using k3s and Docker images.
This setup allows you to efficiently manage your application's components within a lightweight Kubernetes environment. Whether for development, testing, or production, leveraging k3s and Docker provides a scalable and containerized solution for your application.