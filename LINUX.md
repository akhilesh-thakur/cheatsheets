
# Linux Cheat Sheet

## User CRUD 

Switch to root User

```bash
sudo -i
```
Go back to normal User

```bash
su - 'ubuntu' or 'akhilesh'
Or,
exit
```
Switching between users : Suppose we have two users named 'ubuntu' and 'akhilesh' and the default one is ubuntu.

```bash
su - akhilesh (password is required)
Or,
sudo su - akhilesh (password not required)
```
Create a new user named 'thakur'

```bash
sudo adduser thakur
```
Changing user thakur's password

```bash
passwd thakur
Or, 
sudo passwd thakur
```
Deleting user thakur

```bash
ps -u thakur
kill -9 PID
sudo userdel -r thakur
```


