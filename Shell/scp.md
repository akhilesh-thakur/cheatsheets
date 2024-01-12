# Copying Data from One System to Another Using the SCP Protocol

## Local machine to Remote machine

```bash
scp -i private_key.pem "D:/Coding/Web-dev/index.html" ubuntu@13.110.24.122:/home/ubuntu 
```

## Remote machine to Local system

```bash
scp -i private_key.pem ubuntu@13.110.24.122:/home/ubuntu/index.html "D:/Coding/Web-dev/"
```