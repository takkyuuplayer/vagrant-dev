# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "bento/ubuntu-18.04"
  config.vm.network "private_network", ip: "192.168.33.101"

  config.vm.provider "virtualbox" do |vb|
    vb.memory = "2048"
  end

  config.vm.provision "shell", inline: <<-SHELL
    sudo apt-get -y update
    sudo apt-get install -y ruby2.5 ruby2.5-dev git make
    sudo gem2.5 i bundler --no-rdoc --no-ri
  SHELL

  config.vm.provision "ansible_local" do |ansible|
    ansible.install_mode = "pip"
    ansible.playbook = "./ansible/hello.yml"
    ansible.version = "latest"
  end
end
