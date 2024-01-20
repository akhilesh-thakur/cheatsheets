# PostgreSQL Overview

## Installation 

Install
```bash
sudo apt install postgresql postgresql-contrib
```

Check status
```bash
sudo service postgresql status
```

Start if not running
```bash
sudo service postgresql start
```

## Configuration

Secure PostgreSQL
```bash
sudo nano /etc/postgresql/14/main/pg_hba.conf
```

Edit the PostgreSQL pg_hba.conf file: Change `peer` to `md`
```bash
# "local" is for Unix domain socket connections only
local   all             all                                     md5
```

Restart PostgreSQL
```bash
sudo service postgresql restart
```

## Create a User and Database

Dig into PostgreSQL terminal
```bash
sudo -u postgres psql
```

Inside PostgreSQL terminal, create a User and a new Database
```bash
CREATE USER akhilesh WITH PASSWORD 'pass1234';
CREATE DATABASE Company;
ALTER DATABASE Company OWNER TO akhilesh;
```
Exit now
```bash
\q
```
## Connect with the new one and Continue...

Login with password
```bash
psql -U akhilesh -d company -h localhost -p 5432
```

List all Databases
```bash
\l
```
![Interface](/images/psql/db.png)


Create table employees
```bash
CREATE TABLE employees (
    employee_id SERIAL PRIMARY KEY,
    name VARCHAR(100),
    job_title VARCHAR(100)
);
```

Show all tables
```bash
/dt
```
![Interface](/images/psql/table.png)

INSERT INTO employees
```bash
INSERT INTO employees (employee_id, name, job_title)
VALUES
  (1, 'Akhilesh', 'Software Engineer'),
  (2, 'Manoj', 'Banker'),
  (3, 'Aniket', 'Fashion Designer');
```

List the table
```bash
SELECT * FROM employees;
```
![Interface](/images/psql/list_table.png)

Delete an employee with condition where name is Akhilesh

```bash
DELETE FROM employees WHERE name = 'Akhilesh';
```

## Create a new database

Grant permission to user `akhilesh` to create a database

```bash
ALTER USER akhilesh CREATEDB;
```

Create a database named college

```bash
CREATE DATABASE college;
```
Switch to db college

```bash
\c college
```
Delete Table employees

```bash
DROP TABLE employees;
```

## Copy database from VPS to local computer and vice versa

Create two new tables with random values

Create departments table
```bash
CREATE TABLE departments (
    department_id SERIAL PRIMARY KEY,
    department_name VARCHAR(100)
);

-- Insert data into the "departments" table
INSERT INTO departments (department_name)
SELECT 'Department ' || generate_series(1, 100);
```
Create employees table
```bash
CREATE TABLE employees (
    employee_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    department_id INT,
    salary INT
);

-- Insert data into the "employees" table
INSERT INTO employees (first_name, last_name, department_id, salary)
SELECT
    'Employee' || generate_series(1, 500),
    'Lastname' || generate_series(1, 500),
    (random() * 100)::int + 1,  -- Random department_id between 1 and 100
    (random() * 50000 + 50000)::int  -- Random salary between 50000 and 100000
FROM generate_series(1, 500);
```

#### Dump the tables into a file using pg_dump:

```bash
pg_dump -U akhilesh -h localhost -p 5432 -d company -t departments -t employees -F c -f /home/ubuntu/pgdb.dump
```

#### Transfer the backup file to your local computer using SCP

```bash
scp -i key.pem ubuntu@52.66.204.1:/home/ubuntu/pgdb.dump "D:/Coding/archive"
```

#### Restore the tables using pg_restore on your Local computer

```bash
 pg_restore -U postgres -h localhost -p 5432 -d postgres -C D:\Coding\archive\pgdb.dump
```

Done
