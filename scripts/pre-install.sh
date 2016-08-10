#!/bin/bash

cat /tmp/files/paraman  >> /home/vagrant/.bashrc
sudo useradd -d /home/vagrante -m -p'$6$iU9FLVta$UmSNN9KIj8DynMxVNQwQgiL41LFKHx5JPOCGfjcIQtPX7S/VmlK4k.apVW//DfcLM.LV19w5i/aTqEVIi1r7L1' -s /bin/bash  vagrante
sudo su - vagrante; cat /tmp/files/paraman  >> /home/vagrante/.bashrc
sudo su -
sudo echo "vagrante ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers.d/90-cloud-init-users

