# theHarvester - A Comprehensive Information Gathering Tool

## Overview

`theHarvester` a potent information-gathering tool, unveils a target's digital trails with precision. Designed for cybersecurity professionals, ethical hackers, and penetration testers

## Prerequisites

Make sure you a Linux machine

## Installation

### 1. Follow the link for installation

```bash
https://github.com/laramies/theHarvester/wiki/Installation
```

## Usage

### Help center

```bash
python3 theHarvester.py -h  
```

### Scrap Ips, Sub domains and Emails

```bash
python3 theHarvester.py -d target.com -b all
```

### Gather emails from Google and LinkedIn:

```bash
python3 theHarvester.py -d example.com -b google,linkedin
```

### Gather subdomains from DNSDumpster and Virustotal:
```bash
python3 theHarvester.py -d example.com -b dnsdumpster,virustotal
```

### Search for email addresses with PGP keys:
```bash
python3 theHarvester.py -d example.com -b all -g -n
```

### Gather information from all sources, save to a file:
```bash
python3 theHarvester.py -d example.com -b all -f output.html
```

### Include DNS information (MX, NS, etc.):
```bash
python3 theHarvester.py -d example.com -b all -dns
```

### Specify API keys (e.g., Shodan):
```bash
python3 theHarvester.py -d example.com -b shodan -shodan_api YOUR_SHODAN_API_KEY
```

### Use a specific DNS server:
```bash
python3 theHarvester.py -d example.com -b all -dns -dns_server 8.8.8.8
```

### Specify a user agent:
```bash
python3 theHarvester.py -d example.com -b all -u "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome91.0.4472.124 Safari/537.36"

```

### Search for email addresses in a specific language:
```bash
python3 theHarvester.py -d example.com -b all -l 100 -lang en
```

## Overview

![screenshoots](/images/theHarvester/help.png)


![screenshoots](/images/theHarvester/college.png)

## Conclusion

In conclusion, TheHarvester excels in targeted data collection, offering cybersecurity professionals a streamlined tool for efficient reconnaissance. With its modular design and adaptability, it unveils digital footprints swiftly and responsibly. An indispensable asset in the arsenal of ethical hackers and penetration testers.