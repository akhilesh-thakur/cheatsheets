
# CI/CD Jenkins project

## Automating a static React app using Jenkins and Docker image

In this small project I'll be using two Ubuntu remote servers on AWS and a Git Repository with Reactjs static files on GitHub. Let's begin!

### Install Jenkins 

On one of servers intall Jenkins but before that we need to install Java

```bash
sudo apt install openjdk-11-jdk
```
Add Jenkins Repository Key:
```bash
wget -q -O - https://pkg.jenkins.io/debian/jenkins.io.key | sudo apt-key add -
```
Add Jenkins Repository:

```bash
sudo sh -c 'echo deb http://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list'
```
Update Package Lists Again
```bash
sudo apt update
```
Install Jenkins
```bash
sudo apt install jenkins
```

Start Jenkins
```bash
sudo systemctl start jenkins
```
Enable Jenkins to start
```bash
sudo systemctl enable jenkins
```
Check Jenkins status
```bash
sudo systemctl status jenkins
```
