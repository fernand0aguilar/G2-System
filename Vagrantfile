# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = "precise32"
  config.vm.box_url = "http://files.vagrantup.com/precise32.box"

  config.vm.provider :virtualbox do |vb|
    vb.customize ["modifyvm", :id, "--memory", "1024"]
  end

  config.vm.synced_folder "./prestashop", "/var/www/html/prestashop",
    owner: "vagrant",
    group: "www-data",
    mount_options: ["dmode=775,fmode=664"],
    create: true

  config.vm.network :forwarded_port, guest: 80, host: 8080

  config.vm.provision :shell, :path => "after-install.sh"

  end
