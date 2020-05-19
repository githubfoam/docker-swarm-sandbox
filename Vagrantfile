# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|

  # configs for vagrant-hostmanager
  if Vagrant.has_plugin?("HostManager")
    config.hostmanager.enabled = true
    config.hostmanager.manage_host = true
  end
  # config.hostmanager.manage_host = true
  # config.hostmanager.manage_guest = true
  config.vm.box = "bento/centos-7.7"

  config.vm.define "admin" do |host|
      host.vm.hostname ="admin"
      host.vm.network "private_network", ip: "10.10.0.10"
      host.vm.provision "shell" ,path:"scripts/bootstrap_ansible.sh"
      # host.vm.provision "shell" ,inline:"PYTHONUNBUFFERED=1 ansible-playbook /vagrant/ansible/admin.yml -c local"
      host.vm.provision "shell" ,inline:"PYTHONUNBUFFERED=1 ansible-playbook /vagrant/ansible/swarm.yml -c local"
      host.vm.provider "virtualbox" do |provider|
	  provider.memory = 4096
      end
  end

  (1..2).each do |i|
	  config.vm.define "manager#{i}" do |host|
	      host.vm.hostname = "manager#{i}"
	      host.vm.network "private_network", ip: "10.10.0.1#{i}"
	      host.vm.provider "virtualbox" do |provider|
		  provider.memory = 4096
	      end
	  end
   end

  config.vm.define "worker" do |host|
      host.vm.hostname ="worker"
      host.vm.network "private_network", ip: "10.10.0.21"
      host.vm.provider "virtualbox" do |provider|
	  provider.memory = 4096
      end
  end

end
