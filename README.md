# install-nvidia-driver
Script to fresh install nvidia driver (purge, reinstall and reboot)

**You can run the script with the command provided below or run each commands step-by-step.** <br />
**For a freshly installed ubuntu machine, you can skip Step 1-3 and start from step 4 onward.** <br />

How to run script:
```shell
chmod +x fresh_install_nvidiaDriver.sh
./fresh_install_nvidiaDriver.sh
```

The script does the following in sequence:
* Step 1: 
```shell 
sudo apt-get purge nvidia-* 
```
* Step 2: 
```shell 
sudo apt-get update 
```
* Step 3: 
```shell 
sudo apt-get autoremove 
```
* Step 4 (check recommended version to install): 
```shell 
ubuntu-drivers devices 
```
* Step 5: 
```shell 
sudo apt install libnvidia-common-$version (where $version is the version number to install, eg. 495, 510) 
```
* Step 6: 
```shell 
sudo apt install libnividia-gl-$version (where $version is the version number to install, eg. 495, 510) 
```
* Step 7: 
```shell 
sudo apt install nvidia-driver-$version (where $version is the version number to install, eg. 495, 510) 
```
* Step 8: 
```shell 
sudo reboot 
```

After reboot is completed, you can check if nvidia driver is installed by running the following command:
```shell
nvidia-smi
```

