# Deploying MERN App on VPS with Nginx

This guide explains how to deploy a MERN (MongoDB, Express, React, Node.js) application on a Virtual Private Server (VPS) using Nginx. The app is structured with separate frontend and backend folders, and the frontend is built with Vite. Both folders use `dotenv` for configuration.

## Prerequisites
- Access to a VPS (Virtual Private Server)
- Git installed on your VPS

1. **SSH into VPS**

    ```bash
    ssh -i pem-key.pem ubuntu@public-ip
    ```

2. **Update and Upgrade:**

    ```bash
    sudo apt update
    sudo apt upgrade
    ```

3. **Clone your project Repository:**

    ```bash
    git clone https://github.com/akhilesh-thakur/FullStackNoteApp.git
    cd FullStackNoteApp
    ```

4. **Install NVM:**

    ```bash
    curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.38.0/install.sh | bash
    source ~/.nvm/nvm.sh
    ```

5. **Install Node.js and NPM:**

    ```bash
    nvm install --lts
    nvm use --lts
    ```

6. **Check Node.js and NPM Versions:**

    ```bash
    node -v
    npm -v
    ```

### _*Backend starts here*_

7. **Install Node Modules on Backend directory:**

    ```bash
    cd backend_expressjs
    npm install
    ```

    If the installation fails, follow this:

    ```bash
    sudo chown -R $(whoami) /home/ubuntu/folder_name
    ```

8. **Create a .env file for storing Atlas URL and JWT secrets:**

    ```bash
    sudo nano .env
    ```

9. **Install MonogDB:**

    ```bash
    npm install mongodb
    ```

10. **Run the backend server to test if everything works fine:**

    ```bash
    node ./index.js
    ```

11. **Install and run PM2:**

    ```bash
    npm install -g pm2
    pm2 start index.js --name "my-note-server"
    pm2 ls
    ```

### _*Frontend starts here*_

12. **Go to Frontend directory:**

    ```bash
    cd frontend_reactjs
    npm install
    ```

13. **Create a .env file for storing API url:**

    ```bash
    sudo nano .env
    ```

14. **Build for production:**

    ```bash
    npm run build
    ```

15. **Install Nginx:**

    ```bash
    sudo apt install nginx
    ```

16. **Give Write Permissions to /var/www/html and Copy Files from Build Folder:**

    Before copying, grant write permissions to the destination folder:

    ```bash
    sudo chmod 777 /var/www/html
    ```

    Now copy the files from the build folder to the destination:

    ```bash
    sudo cp -r dist/* /var/www/html
    ```

17. **Start Nginx:**

    ```bash
    sudo service nginx start
    sudo nginx -t
    sudo service nginx restart
    ```

## Conclusion

Congratulations on successfully deploying your MERN (MongoDB, Express, React, Node.js) application on your Virtual Private Server (VPS) with Nginx. Your application is now live and accessible through your domain.

### Overview of Servers:
- **Frontend Server (Nginx):**
  - Serves the static frontend files.
  - Manages client requests and communicates with the backend.

- **Backend Server (PM2):**
  - Manages the backend Node.js application.
  - Ensures application stability and automatic restarts.

- **Database Server (MongoDB Atlas):**
  - Hosts your MongoDB database, storing and retrieving data.

### Next Steps:
As you continue with your deployment, consider the following steps:

1. **Monitor and Optimize:**
   - Monitor server performance and optimize configurations for better efficiency.

2. **Security Measures:**
   - Implement additional security measures for production environments.
   - Consider firewalls, SSL certificates, and other security best practices.

3. **Scaling:**
   - Plan for scalability as your application grows.
   - Explore load balancing and scaling strategies.

4. **Backup and Recovery:**
   - Establish a backup and recovery strategy for both your application and database.

5. **Keep Software Updated:**
   - Regularly update software components to benefit from new features and security fixes.

### Thank you!
Thank you for following this comprehensive deployment guide. Wishing you continued success with your MERN application. Happy coding!

