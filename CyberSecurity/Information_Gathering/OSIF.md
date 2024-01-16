# Using OSIF Tool

## Overview

OSIF (Open Source Information Facebook) is a tool designed to gather information from Facebook profiles. Follow the steps below to install OSIF on your Linux system.

## Prerequisites

A Linux machine

## [ Installation ]
```
sudo apt update upgrade
sudo apt-get install python3 python3-pip
git clone https://github.com/ciku370/OSIF
cd OSIF
```

### [ Setup ]
```
pip3 install -r requirements.txt
```
### [ Running ]
```
python3 osif.py
```

### [ Generate Token ]
```
D3b2y >> token
```

### [ Get friend's data ]
```
D3b2y >> get_data
```

### [ Get friend's id ]
```
D3b2y >> dump_id
```

### [ Friend's Info ]
```
D3b2y >> get_info > fb_id
```

### [ Scrap phone numbers ]
```
D3b2y >> dump_phone
```

### [ Scrap Mail ]
```
D3b2y >> dump_mail
```

### [ View the outputs ]
```
cat output/output.txt
```



## [ Screenshots ]
![screenshoots](/images/OSIF/osif.png)

![screenshoots](/images/OSIF/osif.png)


## Conclusion and Warning

In conclusion, OSIF is a powerful tool designed to gather information from Facebook profiles. However, it is crucial to use this tool responsibly, ethically, and in compliance with Facebook's terms of service and legal regulations.

### Warning:

1. **Privacy Concerns:** Respect the privacy of individuals and ensure that you are collecting information only from public profiles or with explicit consent.

2. **Ethical Use:** Use OSIF for legitimate and ethical purposes only. Avoid using the tool for any malicious activities, including but not limited to stalking, harassment, or any other forms of harm.

3. **Facebook Policies:** Familiarize yourself with and respect Facebook's terms of service and policies regarding data scraping and information gathering. Violating these policies may result in the suspension of your account or legal action.

Remember, responsible and ethical use of OSIF or any similar tools is crucial to maintaining a safe and respectful online environment. Always prioritize the rights and privacy of individuals and stay informed about the legal and ethical considerations associated with such tools.
