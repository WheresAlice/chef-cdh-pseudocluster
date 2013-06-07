Vagrant::Config.run do |config|
  config.vm.box = "centos6.3"
  config.vm.box_url = "http://developer.nrel.gov/downloads/vagrant-boxes/CentOS-6.4-i386-v20130427.box"
  config.vm.host_name = "hadoop-dev"

  config.vm.forward_port 50030, 50030
  config.vm.forward_port 50060, 50060
  config.vm.forward_port 50070, 50070
  config.vm.forward_port 50075, 50075

  config.vm.customize ["modifyvm", :id, "--memory", 2048]

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
