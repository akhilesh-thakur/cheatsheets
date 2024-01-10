# Networking Commands

## 1. Ping

To check the reachability of a host on an IP network.

ping google.com

## 2. Traceroute

Shows the route that packets take to reach a destination host.

traceroute google.com

## 3. Curl

Command-line tool for making HTTP requests.

curl https://google.com

## 4. Wget

Command-line tool for downloading files from the web.

wget https://google.com/file.txt

## 5. Netcat (nc)

Used for general network-related tasks, including connecting to a specific port on a remote server.

nc -zv google.com 80

## 6. Telnet

Establishes a connection to a remote server on a specific port.

telnet google.com 80

## 7. Dig (Domain Information Groper)

Tool for querying DNS servers.

dig google.com

## 8. Whois

Provides information about the owner of a domain.

whois google.com

## 9. Nmap

Network scanning tool to discover hosts and services.

nmap google.com

## 10. Ip

Displays or manipulates routing, network devices, interfaces, and tunnels on Linux.

ip addr show

## 11. Mtr (My TraceRoute)

Combination of ping and traceroute, continuously traces the route to the target and shows statistics.

mtr google.com

## Nslookup

Command-line tool for querying DNS servers.

### 1. Basic Query

Performs a basic query for the IP addresses associated with a domain.

nslookup google.com

### 2. Query for a Specific DNS Record

Queries for a specific DNS record type, such as MX (Mail Exchange) records.

nslookup -type=mx google.com

### 3. Query Using a Specific DNS Server

Queries a specific DNS server.

nslookup google.com 8.8.8.8

### 4. Reverse DNS Lookup

Performs a reverse DNS lookup for an IP address.

nslookup 8.8.8.8

### 5. Interactive Mode

Enters interactive mode for multiple queries.

nslookup
> set type=mx
> google.com
> exit

### 6. Changing the DNS Server in Interactive Mode

Changes the DNS server in interactive mode.

nslookup
> server 8.8.8.8
> google.com
> exit

Adjust the commands based on your specific use case and system configuration.
