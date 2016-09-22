#!/bin/bash

sudo apt-get update && apt-get install puppetmaster -y

sudo bash -c "echo -e '*.local' >> /etc/puppet/autosign.conf"
sudo bash -c "echo -e 'autosign = /etc/puppet/autosign.conf' >> /etc/puppet/puppet.conf"

#sudo service puppetmaster start

