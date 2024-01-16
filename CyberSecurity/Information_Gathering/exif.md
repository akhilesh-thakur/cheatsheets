# ExifTool

## Overview

ExifTool is a powerful tool for reading and writing metadata in image, audio, and video files. Follow the steps below to install ExifTool on your Linux system.

## Prerequisites

Make sure you a Linux machine Xd..

## Installation and Usage

### 1. Transfer image if not available

```bash
scp -i key.pem .\tovps\WIN_20220930_11_12_29_Pro.jpg ubuntu@13.235.134.117:/home/ubuntu/
```

### 2. SSH into Linux Machine

```bash
ssh -i key.pem ubuntu@13.235.134.117
```

### 3. Update your machine

```bash
sudo apt-get update
```

### 4. INstall exif

```bash
sudo apt install exif
```

### 5. Install exiftool

```bash
sudo apt install exiftool
```

### 6. With exif

```bash
exif WIN_20220930_11_12_29_Pro.jpg
```

Output:

![screenshoots](/images/exif/exif.png)

### 7. With exiftool

```bash
exiftool WIN_20220930_11_12_29_Pro.jpg
```

Output

![screenshoots](/images/exif/exiftool.png)

### 8. Delete Metadata

```bash
exiftool -all= WIN_20220930_11_12_29_Pro.jpg
```

### 9. Get GPS Coordinates

```bash
exiftool -gpslatitude -gpslongitude WIN_20220930_11_12_29_Pro.jpg
```


## Conclusion

In conclusion, ExifTool is a powerful utility for reading and writing metadata in various file types, including images, audio, and video files. While ExifTool is a valuable tool for managing metadata, it is essential to use it responsibly and ethically, keeping in mind potential privacy concerns and legal implications.