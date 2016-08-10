#!/bin/bash
sv="sudo -u vagrant"

sudo apt-get install tree
sudo apt-get install sysvbanner
#sudo apt-get -y update
#sudo apt-get -y upgrade
$sv echo "banner \"Vagrant\"" >> /home/vagrant/.profile
$sv mkdir /home/vagrant/bin
$sv cp /tmp/files/colores.conf /home/vagrant/bin
$sv cp /tmp/files/corre.sh /home/vagrant/bin/
$sv chmod 755 /home/vagrant/bin/*.sh
$sv /home/vagrant/bin/corre.sh >> borrar
sudo puppet agent -t

