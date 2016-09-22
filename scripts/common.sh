#!/bin/bash

sudo apt-get update && sudo apt-get upgrade -y && sudo apt-get dist-upgrade -y && sudo apt-get clean -y

sudo bash -c "echo -e '\n10.1.1.11\tlab1.local\tlab1' >> /etc/hosts"
sudo bash -c "echo -e '10.1.1.12\tlab2.local\tlab2' >> /etc/hosts"
sudo bash -c "echo -e '10.1.1.13\tlab3.local\tlab3' >> /etc/hosts"
