# install-nvidia-driver
Script to fresh install nvidia driver (purge, reinstall and reboot)

The script does the following in sequence:

* Step 1: ```shell sudo apt-get purge nvidia-* ```
* Step 2: sudo apt-get update
* Step 3: sudo apt-get autoremove
* Step 4: ubuntu-drivers devices
* Step 5: sudo apt install libnvidia-common-$version (where $version is the version number to install, eg. 495, 510)
* Step 6: sudo apt install libnividia-gl-$version (where $version is the version number to install, eg. 495, 510)
* Step 7: sudo apt install nvidia-driver-$version (where $version is the version number to install, eg. 495, 510)
* Step 8: sudo reboot

After reboot is completed, you can check if nvidia driver is installed by running the following command:
```shell
nvidia-smi
```
