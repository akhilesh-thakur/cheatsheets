
# Mysql - Get Started

Here are all the MySql commands that I personally use.


### 1. Using mysql in cmd

1. Open Terminal as administrator
2. Go to 
 ```bash
cd "C:\Program Files\MySQL\MySQL Server 8.0\bin"
```
3.  Run this command
```bash
 mysql -u root -p
```
4. Enter the password to continue...


### 2. Server configuration

1. Start the server
```bash
 mysqld
```
2. Or,

```bash
 net start MySQL

```
3. Check server status

```bash
 sc query MySQL

```
4. Stop the server
```bash
 net stop MySQL

```


### 3. Playing with Mysql

1. Install package if shows error
```bash
 mysql --install
```
2. Remove mysql
```bash
 mysql --remove
```
3. Check the version
```bash
 mysql --version
```
4. CRUD using bash
```bash
 mysql -u username -p -e "SHOW DATABASES;"

```
