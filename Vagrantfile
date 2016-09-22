# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "debian/jessie64"
 
  if Vagrant.has_plugin?("vagrant-cachier")
    config.cache.scope = :machine
  end

  config.vm.define "lab1" do |lab1|
	lab1.vm.network "private_network", ip: "10.1.1.11"
	lab1.vm.network "public_network", bridge: "wlp3s0", ip: "192.168.1.200"
	lab1.vm.provision "shell", path: "scripts/master.sh"
	lab1.vm.hostname = "lab1.local"
#  	lab1.vm.network "forwarded_port", guest: 80, host: 8080
#	lab1.vm.network "forwarded_port", guest: 443, host: 443
#	lab1.vm.network "forwarded_port", guest: 8140, host: 8140
#	lab1.vm.network "forwarded_port", guest: 8433, host: 8433
  end

  config.vm.define "lab2" do |lab2|
	lab2.vm.network "private_network", ip: "10.1.1.12"
#	lab2.vm.provision "shell", path: "config.sh"
	lab2.vm.hostname = "lab2.local"
	lab2.vm.provision "shell", path: "scripts/slaves.sh"
  end

  config.vm.define "lab3" do |lab3|
	lab3.vm.network "private_network", ip: "10.1.1.13"
#	lab3.vm.provision "shell", path: "config.sh"
	lab3.vm.hostname = "lab3.local"
	lab3.vm.provision "shell", path: "scripts/slaves.sh"
  end

#  config.vm.define "lab4" do |lab4|
#	lab4.vm.network "private_network", ip: "10.1.1.14"
#	lab4.vm.provision "shell", path: "config.sh"
#	lab4.vm.hostname = "lab4.local"
#  end

  config.vm.provision "shell", path: "scripts/common.sh"
  
  # Create a forwarded port mapping which allows access to a specific port
  # within the machine from a port on the host machine. In the example below,
  # accessing "localhost:8080" will access port 80 on the guest machine.

  # Share an additional folder to the guest VM. The first argument is
  # the path on the host to the actual folder. The second argument is
  # the path on the guest to mount the folder. And the optional third
  # argument is a set of non-required options.
  # config.vm.synced_folder "../data", "/vagrant_data"

  config.vm.provider "virtualbox" do |vb|
     vb.memory = "2048"
     vb.cpus = 1
  end

  # Define a Vagrant Push strategy for pushing to Atlas. Other push strategies
  # such as FTP and Heroku are also available. See the documentation at
  # https://docs.vagrantup.com/v2/push/atlas.html for more information.
  # config.push.define "atlas" do |push|
  #   push.app = "YOUR_ATLAS_USERNAME/YOUR_APPLICATION_NAME"
  # end

end
