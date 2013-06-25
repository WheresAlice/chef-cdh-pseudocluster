# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "centos6.3"
  config.vm.box_url = "http://developer.nrel.gov/downloads/vagrant-boxes/CentOS-6.4-i386-v20130427.box"
  config.vm.hostname = "hadoop-dev"

  config.vm.network :forwarded_port, guest: 50030, host: 50030
  config.vm.network :forwarded_port, guest: 50060, host: 50060
  config.vm.network :forwarded_port, guest: 50070, host: 50070
  config.vm.network :forwarded_port, guest: 50075, host: 50075

  config.vm.provider :virtualbox do |vb|
    vb.customize ["modifyvm", :id, "--memory", 2048]
  end

  config.vm.provider :rackspace do |rs, override|
    rs.flavor = /512MB/
    rs.image = /CentOS/
    # You are encouraged to add the following to a ~/.vagrant.d/Vagrantfile and retain sensible defaults here
    #rs.username
    #rs.api_key
    #rs.public_key_path
    #override.ssh.private_key_path
    override.vm.box = "dummy"
  end

  config.vm.provision :chef_solo do |chef|
    chef.cookbooks_path = ["cookbooks", "site-cookbooks"]
    chef.data_bags_path = "databags"
    chef.add_recipe "java"
    chef.add_recipe "cdh::yumrepo"
    chef.add_recipe "cdh::pseudo"
    chef.add_recipe "cdh::pig"
    chef.add_recipe "cdh::flume"
    chef.add_recipe "cdh::ant"
    chef.add_recipe "cdh::mahout"
  end
end
