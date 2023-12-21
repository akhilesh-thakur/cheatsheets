## MERN App Deployment on EC2

First of all you need to Login to your EC2 console and choose the prefered server location. And then you need to create an instance as per your business requirements and launch it.


### 1. Login in remote machine

Open terminal in the directory where your PEM file is located

```bash
ssh -i pem-key.pem ubuntu@public-ip
```
### 2. Updating the VPS

Update and upgrade your Ubuntu machine

```bash
sudo apt update
sudo apt upgrade
```

### 3. Install NVM

Installing NVM is a good practice. So that you can upgrade and downgrade the Node version

```bash
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.38.0/install.sh | bash
source ~/.nvm/nvm.sh

```
    
### 4. Install Nodejs now

Install Nodejs latest

```bash
nvm install --lts
nvm use --lts

```
### 5. Check if Nodejs installed

Use the following commands to check the Node and NPM version

```bash
node -v
npm -v
```
### 6. Install Git

We need Git to clone our remote repository

```bash
sudo apt install git
```
### 7. Git clone

Clone your git repository in your desired directory and go inside

```bash
git clone your_repo_url 
cd your_app_directory
```
### 8. Install node_modules

Now node_modules directory will be created

```bash
npm install
```
### 9. Run Build

This will create a build folder that is suitable for production

```bash
npm run build
```
