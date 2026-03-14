# launchpad

## Ubuntu
The system runs on ROS1 Noetic, utilizing Ubuntu 20.04 LTS (Focal Fossa) as the operating system.

### Instalation

#### Setup USB drive
1. [Download the 64-bit desktop ISO image.](https://releases.ubuntu.com/20.04.6/?_gl=1*19ip6hm*_gcl_au*MTE4NTIyOTI0MS4xNzA3MTMxMDQx&_ga=2.149898549.2084151835.1707729318-1126754318.1683186906)
2. Download and install a tool such as [Rufus](https://rufus.ie/de/#download) to create the installation media.
3. Create a bootable USB drive using Rufus and the downloaded ISO file. The drive must have a capacity of at least 4 GB.

#### Install Ubuntu
1. Access the BIOS on the target computer and <ins>**disable**</ins> Secure Boot. This step is essential to ensure that drivers and third-party modules function correctly under Ubuntu without compatibility issues.
2. Additionally, please adjust the boot order in the BIOS to prioritize USB devices as the primary boot source.
3. Proceed by booting the system into the Ubuntu installer.
4. **TODO**

### Customizing Ubuntu
With the Ubuntu installation complete, we can now begin configuring the system to meet our requirements. We utilize various scripts to simplify and speed up the workflow.
1. Clone this repository or ensure Git is installed on your local system.
   ```bash
   sudo apt-get update -y
   sudo apt-get install git -y
   ```
   Validate that the installation was successful.
   ```bash
   git version
   ```
