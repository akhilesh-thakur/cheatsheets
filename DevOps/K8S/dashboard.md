# Setting Up Kubernetes Dashboard

This guide outlines the steps to deploy and access the Kubernetes Dashboard on your Kubernetes cluster.

## 1. Install Kubernetes Dashboard

Deploy the Kubernetes Dashboard using the recommended YAML configuration

```bash
kubectl apply -f https://raw.githubusercontent.com/kubernetes/dashboard/v2.5.0/aio/deploy/recommended.yaml
```

## 2. Create Service Account and Cluster Role Binding

Deploy the Kubernetes Dashboard using the recommended YAML configuration

```bash
# Service Account
apiVersion: v1
kind: ServiceAccount
metadata:
  name: admin-user
  namespace: kubernetes-dashboard
---
# Cluster Role Binding
apiVersion: rbac.authorization.k8s.io/v1
kind: ClusterRoleBinding
metadata:
  name: admin-user
roleRef:
  apiGroup: rbac.authorization.k8s.io
  kind: ClusterRole
  name: cluster-admin
subjects:
- kind: ServiceAccount
  name: admin-user
  namespace: kubernetes-dashboard
```

Apply the configuration

```bash
kubectl apply -f <filename>.yaml
```

## 3. Generate Bearer Token

Retrieve the Bearer Token associated with the Service Account

```bash
kubectl -n kubernetes-dashboard create token admin-user
```

## 4. Start proxy

Start the proxy to access the dashboard locally

```bash
kubectl proxy
```

## 5.  Access the Dashboard

The dashboard is accessible at:

```bash
http://localhost:8001/api/v1/namespaces/kubernetes-dashboard/services/https:kubernetes-dashboard:/proxy/
```