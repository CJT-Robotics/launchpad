# launchpad
This repository contains all the source files, directory structures and the installation and setup scripts required for the full deployment of the project.


## Install Ubunut 20.04 local fossa

## Connect with monitor, keyboard & mouse

```bash
sudo apt update
sudo apt install openssh-server
sudo systemctl status ssh
sudo ufw allow ssh
```

## Adding ssh-key:
On operator-laptop:
```bash
ssh-keygen -t ed25519 -C "operator-laptop"
ssh-copy-id username@ip-adress
```

## Now everything set up. Everything else over ssh

```bash
ssh username@ip-adress
```

### removing pw from some commands
```bash
sudo visudo
```
add after last line
```
robot ALL=(ALL) NOPASSWD: /usr/bin/apt *, /usr/sbin/reboot, /bin/chmod +x *
```

### Install ROS Noetic
```bash
sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list'
sudo apt install curl -y
curl -s https://raw.githubusercontent.com/ros/rosdistro/master/ros.asc | sudo apt-key add -
sudo apt update
sudo apt install ros-noetic-ros-base -y
echo "source /opt/ros/noetic/setup.bash" >> ~/.bashrc
sudo apt install python3-rosdep python3-rosinstall python3-rosinstall-generator python3-wstool build-essential -y
sudo apt install python3-rosdep -y
sudo rosdep init
rosdep update
```
### Creating GithubKey
```bash
ssh-keygen -t ed25519 -C "rrl@cjt-robotics.de" #save as id_github
cat ~/.ssh/id_github.pub #add this key to github
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_github
ssh -T git@github.com
```
```bash
nano ~/.ssh/config
```
add the following:
```
Host github.com
    HostName github.com
    User git
    IdentityFile ~/.ssh/id_github
```

### some basic stuff
```bash
sudo apt install python3-pip -y
sudo ubuntu-drivers install
sudo reboot
```

### Setting up catkin_ws
```bash
sudo apt-get install python3-catkin-tools -y
```

[catkin_ws manual](https://github.com/CJT-Robotics/catkin_ws.git)

### Installing ROS PKGs
```bash
sudo apt install ros-noetic-cv-bridge -y

```

### Setting up ultralytics on GPU
```bash
pip install ultralytics
python3 -c "import torch; print('CUDA available:', torch.cuda.is_available()); print('Device:', torch.cuda.get_device_name(0) if torch.cuda.is_available() else 'No GPU')"
```
