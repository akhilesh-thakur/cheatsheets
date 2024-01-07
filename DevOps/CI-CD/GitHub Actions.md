## GitHub Actions : 

### Deploying a static React.js app to EC2 Unbuntu server using GitHub Actions

Do do this we have to create a 'yml' file under .GitHub/workflows/node.js.yml 
Beter use Nodejs default Nodejs workflow and do some minor changes in it.

```bash
name: Node.js CI

on:
  push:
    branches: [ "main" ]

jobs:
  build:

    runs-on: self-hosted

    strategy:
      matrix:
        node-version: [18.x]

    steps:
    - uses: actions/checkout@v3
    - name: Use Node.js ${{ matrix.node-version }}
      uses: actions/setup-node@v3
      with:
        node-version: ${{ matrix.node-version }}
        cache: 'npm'
    - run: npm ci
    - run: npm run build --if-present

```
SSH into the remote server

```bash
ssh -i key.pem ubuntu@Public_ip
```
Create a Folder and Navigate to It

```bash
mkdir actions-runner && cd actions-runner
```
Download the Latest Runner Package

```bash
curl -o actions-runner-linux-x64-latest.tar.gz -L https://github.com/actions/runner/releases/download/v2.311.0/actions-runner-linux-x64-2.311.0.tar.gz
```
Optional: Validate the Hash

```bash
echo "29fc8cf2dab195bb147384e7e24cfd4d4022c793b346a6175465aa278  actions-runner-linux-x64-latest.tar.gz" | shasum -a 256 -c
```
Extract the Installer

```bash
tar xzf ./actions-runner-linux-x64-latest.tar.gz
```
Configure the Runner

```bash
./config.sh --url https://github.com/your-username/your-repo --token YOUR_ACCESS_TOKEN
```
Run the Runner

```bash
sudo ./svc.sh install
sudo ./svc.sh start
```
Verify the Runner

```bash
sudo ./svc.sh status
```
Now install Nginx

```bash
sudo apt install nginx
```
Go to nginx config and change the defaul html root path in 'default.conf' to the actual path that is /home/ubuntu/actions-runner/_work/repo_name/dist

```bash
cd /etc/nginx/sites-availabe
sudo nano default.confi
```
Restart Nginx

```bash
sudo service nginx Restart
```
