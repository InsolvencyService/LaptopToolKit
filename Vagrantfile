# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = '2'
Vagrant.require_version ">= 1.7.0"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

  config.vm.provider "virtualbox" do |v|
    v.memory = 2048
  end

  config.vm.define "devbox" do |devbox|
    devbox.vm.box = 'xenial64'
    devbox.vm.box_url = 'https://cloud-images.ubuntu.com/xenial/current/xenial-server-cloudimg-amd64-vagrant.box'
    devbox.ssh.forward_agent = true
  end

  config.vm.define "devbox_gui", autostart: false do |devbox_gui|
    devbox_gui.vm.provider :virtualbox do |v|
        v.gui = true
    end
    devbox_gui.vm.box = 'xenial64'
    devbox_gui.vm.box_url = 'https://cloud-images.ubuntu.com/xenial/current/xenial-server-cloudimg-amd64-vagrant.box'
    devbox_gui.ssh.forward_agent = true
    devbox_gui.vm.provision "shell", path: "bootstrap.sh"
    devbox_gui.vm.provision :reload
  end
end