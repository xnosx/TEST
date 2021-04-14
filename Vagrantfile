# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|

    config.vm.box = "generic/ubuntu2004"
    config.vm.hostname = "Ubuntu2004"
    config.vm.box_check_update = false
  
    # Prefer Provider
    config.vm.provider "virtualbox" do |v|
      v.memory = 1024 
      v.cpus = 1
      v.name = "Ubuntu-2004"
    end
  
    # config.vm.network "public_network"
    config.vm.network "public_network",
      bridge: "Intel(R) Ethernet Connection (6) I219-V",
      use_dhcp_assigned_default_route: true
      #ip: "192.168.43.110"
    
    # SHELL Configure Network eth1 Interface UP
    # and enable Root Shell Access
    config.vm.provision "shell", inline: <<-SHELL
      apt-get update
      apt-get install -y net-tools
     SHELL
    
  end
