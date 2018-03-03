# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
  config.vm.box = "pbarriscale/centos7-gui"
  config.vm.host_name = "edb01"
  config.vm.provider "edb" do |vb|
    vb.memory = "1024"
  end
  config.vm.provision :shell, :path => "provision.sh"
end
