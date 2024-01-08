# Kubeadm Installation Guide

This guide outlines the steps needed to set up a Kubernetes cluster using kubeadm.

## Pre-requisites

* Ubuntu OS
* Two t2.medium instance type or higher

---

## 1. Run on Both Master & Worker Node

Run the following commands on both the master and worker nodes to prepare them for kubeadm.

```bash
sudo apt update
sudo apt-get install -y apt-transport-https ca-certificates curl
sudo apt install docker.io -y

sudo systemctl enable --now docker # enable and start in single command.

# Adding GPG keys.
curl -fsSL "https://packages.cloud.google.com/apt/doc/apt-key.gpg" | sudo gpg --dearmor -o /etc/apt/trusted.gpg.d/kubernetes-archive-keyring.gpg

# Add the repository to the sourcelist.
echo 'deb https://packages.cloud.google.com/apt kubernetes-xenial main' | sudo tee /etc/apt/sources.list.d/kubernetes.list

sudo apt update 
sudo apt install kubeadm=1.20.0-00 kubectl=1.20.0-00 kubelet=1.20.0-00 -y
```

## 2. Master Node

a.) Initialize the Kubernetes master node.

    ```bash
    sudo kubeadm init
    ```

b.) Set up local kubeconfig (both for root user and normal user):

    ```bash
    mkdir -p $HOME/.kube
    sudo cp -i /etc/kubernetes/admin.conf $HOME/.kube/config
    sudo chown $(id -u):$(id -g) $HOME/.kube/config
    ```

c.) Apply Weave network:

    ```bash
    kubectl apply -f https://github.com/weaveworks/weave/releases/download/v2.8.1/weave-daemonset-k8s.yaml
    ```

d.) Generate a token for worker nodes to join:

    ```bash
    sudo kubeadm token create --print-join-command
    ```

e.) Expose port 6443 in the Security group for the Worker to connect to Master Node


## 3. Worker Node

a.) Run the following commands on the worker node.

    ```bash
    sudo kubeadm reset pre-flight checks
    ```
    
b.) Paste the join command you got from the master node and append `--v=5` at the end.
*Make sure either you are working as sudo user or use `sudo` before the command*


## 4. Verify Cluster Connection

On Master Node:

```bash
kubectl get nodes
```

## 5. Labeling Nodes and Test demo a Pod (Optional)

If you want to label worker nodes, you can use the following command:

```bash
kubectl label node <node-name> node-role.kubernetes.io/worker=worker
```

---

If you want to test a demo pod, you can use the following command:

```bash
kubectl run hello-world-pod --image=busybox --restart=Never --command -- sh -c "echo 'Hello, World' && sleep 3600"
```