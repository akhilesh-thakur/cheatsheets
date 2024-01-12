# Wi-Fi Handshake Capture and Analysis

## Description
This project outlines the steps to capture Wi-Fi handshakes using BetterCAP and analyze them using hcxtools. The tools are intended for ethical security testing and should only be used with proper authorization.

## Prerequisites
- Linux system
- Wireless network interface in monitor mode
- Permissions to install and run tools (sudo access)

## Installation

### 1. Install BetterCAP

```bash
sudo apt update
sudo apt install bettercap
```

### 2. Check USB Devices

```bash
lsusb
```

### 3. Check Wireless Interface

```bash
iwconfig
```

### 4. Enable Monitor Mode with airmon-ng

```bash
sudo airmon-ng start <your_interface>
```
Replace <your_interface> with your wireless interface name, e.g., wlan0


### 5. Start BetterCAP

```bash

sudo bettercap
```

### 6. Set Wireless Interface in BetterCAP

```bash
set wifi.interface wlan0mon
```

### 7. Set Capture Method to File (Handshake)

```bash
set wifi.handshake file
```

### 8. Enable Wi-Fi Reconnaissance

```bash
wifi.recon on
```

### 9. Show Discovered Wi-Fi Networks

```bash
wifi.show
```

### 10. Show Associated Clients

```bash
wifi.assoc
```

### 11. Turn off Wi-Fi Reconnaissance and Exit BetterCAP

```bash
wifi.recon off
exit
```

### 12. Install hcxtools

```bash
sudo apt install hcxtools
```

### 13. Capture Handshakes with hcxdumptool

```bash
sudo hcxdumptool -i wlan0mon -o capture.pcapng --enable_status
```
 Replace `wlan0mon` with your monitored interface


### 14. Convert Captured File for hashcat

```bash

sudo hcxpcaptool -z test.16800 -o hashcat.hccapx capture.pcapng
```

## Disclaimer

Unauthorized access to Wi-Fi networks or attempts to crack passwords are illegal and unethical. Always comply with applicable laws and ethical standards.

