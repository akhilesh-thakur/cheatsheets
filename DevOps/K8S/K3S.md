# K3s Guide

K3s is a lightweight Kubernetes distribution designed for edge and IoT devices. To install K3s on an Ubuntu VPS, you can follow these steps:

## Prerequisites:

* Access to a Ubuntu VPS
* SSH into your Ubuntu VPS

## Installation Steps

### 1. Download and install K3s

```bash
curl -sfL https://get.k3s.io | sh -
```
This script installs K3s and starts the service. The K3s server will be started as a systemd service, and you can manage it using standard systemd commands.

### 2. Wait for the installation to complete

```bash
sudo systemctl status k3s
```
Ensure that the service is active and running.

### 3. Configure KUBECONFIG

K3s stores the Kubeconfig file at /etc/rancher/k3s/k3s.yaml. To use kubectl to interact with your K3s cluster, you need to copy this configuration to your local machine.

```bash
mkdir -p ~/.kube
sudo cp /etc/rancher/k3s/k3s.yaml ~/.kube/config

#Make sure to update the permissions of the Kubeconfig file
sudo chmod 644 ~/.kube/config
```

### 4. Access your K3s cluster:

Now you can use kubectl on your local machine to interact with your K3s cluster. For example:

```bash
kubectl get nodes
```
This should display the nodes in your K3s cluster.

## Conclusion

That's it! You now have K3s installed on your Ubuntu VPS. You can deploy and manage Kubernetes workloads on your K3s cluster using kubectl.
