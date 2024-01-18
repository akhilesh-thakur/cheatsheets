## Setting Up Nginx Server with custom SSL/HTTPS

Introduction:
This guide outlines the steps to set up an Nginx server with SSL/HTTPS on an Ubuntu instance. The SSL certificate is self-signed for testing purposes.

### 1: Install Nginx

```bash
sudo apt update
sudo apt install nginx
```

### 2: Create Self-Signed SSL Certificate

```bash
sudo mkdir /etc/nginx/ssl
sudo openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout /etc/nginx/ssl/nginx-selfsigned.key -out /etc/nginx/ssl/nginx-selfsigned.crt
```

### 3: Configure Nginx for SSL
Edit the Nginx default configuration file to include SSL configurations.

```bash
sudo nano /etc/nginx/sites-available/default
```
Adjust is based on your specific need
```bash
server {
    listen 80 default_server;
    listen [::]:80 default_server;

    root /var/www/html;
    index index.html;

    server_name _;

    location / {
        try_files $uri $uri/ =404;
    }
}

server {
    listen 443 ssl default_server;
    listen [::]:443 ssl default_server;

    ssl_certificate /etc/nginx/ssl/nginx-selfsigned.crt;
    ssl_certificate_key /etc/nginx/ssl/nginx-selfsigned.key;

    root /var/www/html;
    index index.html;

    # Other SSL configurations go here

    location / {
        try_files $uri $uri/ =404;
    }
}

```

### 4: Restart Nginx

```bash
sudo service nginx restart
```
### 5. Navigate to your domain/ip

[https://52.66.204.1/](https://52.66.204.1/) 
Or, 
[https://akhileshthakur.ddns.net](https://akhileshthakur.ddns.net)

Now, you should be able to access your server over HTTPS through the Nginx server. Adjust configurations as needed.
