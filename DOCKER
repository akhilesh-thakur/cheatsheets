Docker tutorial:-

1. Create a VPS account and choose Docker while creating droplet

2. Now docker is installed in you virtual maching on server.

3. You can host multiple web Apps on your server with the help of Docker.. What Docker do is it creates multiple containers on the server to host multiple apps..



## Docker commands:

docker - to see if it is installed

docker run nginx - to install nginx on the machine

docker -p run 80:80 nginx - to access the docker on port 80 for example https://169.23.53.55/80

docker run -p 8080:80 nginx - now the linux serever will be accessible on port 8080 https://169.23.53.55/8080

docker run -d -p 8080:80 nginx - to run on background

docker stop 532a323a453 - to stop the particlar docker container, (532a323a453) is the id of the container

docker ps => to show all the docker containers

docker ps -a => to view the previous stopped and created containers.

ufw allow 5000 => now this port ie, 5000 will be allowed and the machine can be accessible through https://169.23.53.55/5000

docker run alpine => 

docker rm a0 => to remove the data of that container stored that can be viewd with docker ps -a

docker system prune =>  remove all the stopped containers and cached files

docker -d run ngnix => to again run the nginx

 


TO CREATE AND COPY A FILE AND SWITCH WITH DIFFERENT CONTAINERS WE HAVE SOME COMMANDS LIKE:
(First install vim)

docker exec -it 1f12  bash to go to the particular container

apt update

apt install vim

vim akhilbhai.txt => write something in this file

exit => to get out from the container to the main Linux system.


TO COPY AND PASTE:

docker cp 1f12:akhilbhai.txt akhilbha2.txt  => to copy and paste the content to akhilbhai2.txt


docker images => to see all the images
