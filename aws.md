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

Clone your git repository in /home/ubuntu/ name it and get into it.

```bash
git clone your_repo_url folder_name
cd your_app_directory
```
### 8. Install node_modules

Now node_modules directory will be created

```bash
npm install
```
If it says failed to install node_modules, use this command

```bash
sudo chown -R $(whoami) /home/ubuntu/folder_name
```
### 9. Create Build Folder

This will create a build folder that is suitable for production

```bash
npm run build
```
### 10. Install Nginx

We need Nginx to make our website live

```bash
sudo apt-get install nginx
```

### 11. Copy Build folder

Now move the build folder to /var/www/portfolio location. Here in my case the name of build folder is dist and 'portfolio' is the dir of my website.

```bash
sudo cp -r dist /var/www/portfolio
```
### 12. Navigate to /etc/nginx/

Go to this location and configure the nginx.conf basically comment this line:

include /etc/nginx/sites-enabled/*;

```bash
cd /etc/nginx/
sudo nano nginx.conf
```
### 13. Create .conf file in conf.d

Now our root file for Nginx is conf.d instead of sites-enabled. Here we will create a .conf file in the name of our domain. For example 'akhileshthakur.com.conf'

```bash
cd /etc/nginx/conf.d
```

```bash
sudo nano akhileshthakur.com.conf
```
Configure it
```bash
server {
    listen 80 default_server;
    root /var/www/portfolio/dist;
    index index.html;

    server_name _;

    location / {
        try_files $uri $uri/ =404;
    }
}
```
### 14. Start Nginx

Start and check Nginx error using the following commands.

```bash
sudo service nginx start
```
```bash
sudo nginx -t
```
```bash
sudo service nginx restart
```
Done! Happy Coding...

---


## Basic Authentication

You can protect your desired route by using the basic authentication of Nginx for example a admin route (akhileshthakur.com/admin). Where you can prompt admin user for authentication. To do so in our previous deployment, we have to to little modifcations.

### Create a Separate directory for admin route

At the following location, create or copy a index.html file.

```bash
cd /var/www/portfolio
```
```bash
sudo mkdir admin
```
```bash
cd admin
sudo nano index.html
```

### Modify akhileshthakur.com.conf

```bash
cd /etc/nginx/conf.d
```
```bash
server {
    listen 80 default_server;
    root /var/www/portfolio/dist;
    index index.html;

    server_name _;

    location /admin {
        alias /var/www/portfolio/admin;
        index index.html;
        try_files $uri $uri/ =404;
    }
}
```
Now the index.html inside the admin directory will serve as the 'akhileshthakur/admin'

### Make this route password proteced

To do so we need to install apache2-utils 

```bash
sudo apt-get install apache2-utils
```
Run this commands to create a username and It will prompt you to enter the password for two times that you want to set. [ak123]

```bash
sudo htpasswd -c /etc/nginx/.htpasswd akhilesh
```
Again cofigure the conf file

```bash
server {
    listen 80 default_server;
    root /var/www/portfolio/dist;
    index index.html;

    server_name _;

    location /admin {
        auth_basic "Restricted Access: Admin Only";
        auth_basic_user_file /etc/nginx/.htpasswd;

        alias /var/www/portfolio/admin;
        index index.html;
        try_files $uri $uri/ =404;
    }
}
```
Restart the server

```bash
sudo server nginx restart
```
Done :)
