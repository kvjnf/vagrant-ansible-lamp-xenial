# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
  config.vm.box = "bento/ubuntu-16.04"

  #config.vm.box_check_update = false
  config.vm.hostname = "ubuntu-xenial.net"
  config.vm.network "private_network", ip: "192.168.21.11"

  #share領域をドキュメントルートにする時、guest側でchmod, chownしても権限が変わらないため
  #Vagrantfile側で設定すること。
  config.vm.synced_folder "./", "/vagrant", id: "vagrant-root", :nfs => false,
    :owner => "www-data",
    :group => "www-data",
    :mount_options => ["dmode=775,fmode=664"]
  #config.vm.network "forwarded_port", guest: 80, host: 8080

   config.vm.provider "virtualbox" do |vb|
     vb.name = "ubuntu-xenial"
     vb.customize [
       "modifyvm", :id,
       "--name", "ubuntu-xenial",
       "--memory", 2048,
       "--natdnshostresolver1", "on", #ホスト側のDNSリゾルバを利用することで速度改善
       "--cpus", 2,
       "--cableconnected1", "on",
     ]
   end

   config.ssh.forward_agent = true
  #
  # View the documentation for the provider you are using for more
  # information on available options.

  # Define a Vagrant Push strategy for pushing to Atlas. Other push strategies
  # such as FTP and Heroku are also available. See the documentation at
  # https://docs.vagrantup.com/v2/push/atlas.html for more information.
  # config.push.define "atlas" do |push|
  #   push.app = "YOUR_ATLAS_USERNAME/YOUR_APPLICATION_NAME"
  # end

  # Enable provisioning with a shell script. Additional provisioners such as
  # Puppet, Chef, Ansible, Salt, and Docker are also available. Please see the
  # documentation for more information about their specific syntax and use.
  #config.vm.provision "shell", inline: <<-SHELL
  #  sudo apt-get update
  #  sudo apt-get upgrade -y
  #SHELL
  config.vm.provision :ansible_local do |ansible|
    ansible.playbook = 'ansible/playbook.yml'
    ansible.install_mode = 'default'
    ansible.version = 'latest'
  end
end
