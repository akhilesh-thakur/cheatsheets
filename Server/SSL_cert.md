## Steps to Enable HTTPS in Your Domain Hosted on a Linux Remote Server or VPS

We'll use Let's Encrypt and Certbot for that because it is easy and free to use.

- Access Remote Server via SSH
```bash
ssh -p 1034 akhilesh@23.32.54.11
```
- Install Certbot and it’s Nginx plugin
```sh
sudo apt install certbot python3-certbot-nginx
```
- Verify Web Server Ports are Open and Allowed through Firewall
```sh
sudo ufw status verbose
```
- Obtain an SSL certificate
You can skip www.your_domain.com if you have only one A record

```sh
sudo certbot --nginx -d your_domain.com -d www.your_domain.com
```
- Check Status of Certbot
```sh
sudo systemctl status certbot.timer
```
- Dry Run SSL Renewal
```sh
sudo certbot renew --dry-run
```