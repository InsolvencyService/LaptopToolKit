# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = '2'
Vagrant.require_version ">= 1.7.0"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

  config.vm.provider "virtualbox" do |v|
    v.memory = 512
  end

  config.vm.define "devbox" do |devbox|
    devbox.vm.box = 'trusty64'
    devbox.vm.box_url = 'https://cloud-images.ubuntu.com/vagrant/trusty/current/trusty-server-cloudimg-amd64-vagrant-disk1.box'
    devbox.ssh.forward_agent = true
    devbox.vm.synced_folder "./", "/opt/dev/", create: true
    devbox.vm.synced_folder File.join(Dir.home, ".vagrant.d"),
        "/vagrant/vagrant.d"
  end

  config.vm.define "devbox_gui", autostart: false do |devbox_gui|
    devbox_gui.vm.provider :virtualbox do |v|
        v.gui = true
    end
    devbox_gui.vm.box = 'box-cutter/ubuntu1404-desktop'
    devbox_gui.ssh.forward_agent = true
    devbox_gui.vm.synced_folder "./", "/opt/dev/", create: true
    devbox_gui.vm.synced_folder File.join(Dir.home, ".vagrant.d"),
        "/vagrant/vagrant.d"
  end
end