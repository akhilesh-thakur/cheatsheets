# BurpSuite Cheatshets

## BurpSuite Installation

1. Download Java:
   - Visit [https://www.oracle.com/java/technologies/javase-downloads.html](https://www.oracle.com/java/technologies/javase-downloads.html)
   - Download the latest version of the Java Development Kit (JDK) for Windows.
   - Run the installer and follow on-screen instructions to install Java.

2. Set Java Environment Variables (Optional but Recommended):
   - Set the `JAVA_HOME` environment variable to the Java installation directory.
   - Add the `bin` directory of the Java installation to the system's `PATH` variable.

3. Verify Java Installation:
   - Open a command prompt and type:
     ```bash
     java -version
     ```
   - Verify that the installed Java version is displayed.

4. Download Burp Suite:
   - Visit [https://portswigger.net/burp](https://portswigger.net/burp)
   - Choose the edition (Community or Professional) and download the installer.

5. Install Burp Suite:
   - Run the Burp Suite installer.
   - Follow on-screen instructions to install Burp Suite.
   - Choose the installation directory during the installation process.

6. Configure Browser Proxy:
   - Open your web browser and configure the proxy settings to route traffic through Burp Suite.
     - Proxy Address: 127.0.0.1
     - Port: 8080

7. Start Burp Suite:
   - Launch Burp Suite using the shortcut on the desktop or from the installation directory.

8. Accept Certificate:
   - When intercepting secure traffic, your browser may warn about an untrusted certificate.
   - Accept the certificate to proceed.

9. Explore Burp Suite:
   - Familiarize yourself with Burp Suite's features, including the proxy, scanner, repeater, intruder, etc.

Note: Ensure ethical and responsible use of security tools. Obtain proper authorization before testing and assessing the security of any system.