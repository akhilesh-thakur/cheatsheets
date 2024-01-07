
# CI/CD Jenkins project

## Automating a static React app using Jenkins and Nginx server

In this small project I'll be using a Ubuntu remote server on AWS and a Git Repository with Reactjs static files on GitHub with webhook. Let's begin!

### 1. Install Jenkins 

On one of servers intall Jenkins but before that we need to install Java

```bash
sudo apt install fontconfig openjdk-17-jre
```
Add Jenkins Repository Key:
```bash
sudo wget -O /usr/share/keyrings/jenkins-keyring.asc \
  https://pkg.jenkins.io/debian-stable/jenkins.io-2023.key
echo deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc] \
  https://pkg.jenkins.io/debian-stable binary/ | sudo tee \
  /etc/apt/sources.list.d/jenkins.list > /dev/null
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
sudo service jenkins start
```
Check Jenkins status
```bash
sudo service jenkins status
```

### 2. Install Nodejs and NPM

### 3. Install Nginx

Install the nginx server on VPS
```bash
sudo apt install nginx
```
Start Nginx
```bash
sudo service nginx start
```

### 4. Setting-up the Jinkins environment
Now go to http://public_ip:8080/ and follow the steps:
1. Login using the hash value
2. Create an Account
3. Install Nodejs, GitHub plugins
4. Create a job with freestyle project
5. Choose Git under 'Source Code Management option'
6. Check-mark this option 'GitHub hook trigger for GITScm polling'
7. Under Build Steps, choose Execute Shell and write the following commands
   
   ```bash
   npm install
   npm run build
   cp -r dist/* /var/www/html/
   ```
8. Click on Save

### 5. Give write permission to /var/www
```bash
sudo chown -R jenkins:jenkins /var/www/html/
sudo chmod -R 755 /var/www/html/
```
Done :) Now you can just push the code to your GitHub repository and automatically your site will be updated.
