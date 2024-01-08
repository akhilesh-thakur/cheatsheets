# K8S Installation Guide and Basic Commands

## K8s Installation Guide for Windows

This guide will walk you through the installation of Kubernetes on Windows using Minikube.

### Prerequisites

1. Install a Hypervisor (e.g., VirtualBox) - https://www.virtualbox.org/
2. Install kubectl - https://kubernetes.io/docs/tasks/tools/install-kubectl/
3. Install Minikube - https://minikube.sigs.k8s.io/docs/start/

## Steps

### 1. Start Minikube

```bash
minikube start --vm-driver=virtualbox
```

### 2. Verify Minikube Status

```bash
minikube status
```
### 3. Configure Kubectl

```bash
kubectl config use-context minikube
```

### 4. Deploy a Sample Application

```bash
kubectl create deployment hello-minikube --image=k8s.gcr.io/echoserver:1.4
```

### 5. Expose the Deployment

```bash
kubectl expose deployment hello-minikube --type=NodePort --port=8080
```

### 6. Access the Application

```bash
minikube service hello-minikube
```

### 7. Delete the Minikube cluster when you're done.

```bash
minikube delete
```

---

## Basic K8s commands

### 1. Information

#### Get Cluster Info

```bash
kubectl cluster-info
```
Displays information about the Kubernetes cluster.

### Get Nodes
```bash
kubectl get nodes
```
Displays information about the nodes in the cluster.

## 2. Deployments

### List Deployments

```bash
kubectl get deployments
```
Lists all deployments in the default namespace.

### Describe Deployment

```bash
kubectl describe deployment <deployment-name>
```
Provides detailed information about a specific deployment.

## 3. Pods

### List Pods

```bash
kubectl get pods
```
Lists all pods in the default namespace.

### Describe Pod

```bash
kubectl describe pod <pod-name>
```
Provides detailed information about a specific pod.

### Log Streaming

```bash
kubectl logs -f <pod-name>
```
Streams logs from a pod.

## 4. Services

### List Services

```bash
kubectl get services
```
Lists all services in the default namespace.

### Describe Service

```bash
kubectl describe service <service-name>
```
Provides detailed information about a specific service.


## 5. Scaling

### Scale Deployment
```bash
kubectl scale deployment <deployment-name> --replicas=<desired-replica-count>
```
Scales the specified deployment to the desired number of replicas.


## 6. Deleting Resources

### Delete Pod
```bash
kubectl delete pod <pod-name>
```
Deletes a specific pod.

### Delete Deployment

```bash
kubectl delete deployment <deployment-name>
```
Deletes a specific deployment.

### Delete Service
```bash
kubectl delete service <service-name>
```
Deletes a specific service.

