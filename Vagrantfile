Vagrant::Config.run do |config|
    config.vm.box = "centos6.3"
    config.vm.box_url = "http://developer.nrel.gov/downloads/vagrant-boxes/CentOS-6.4-i386-v20130427.box"

    config.vm.provision :chef_solo do |chef|
        chef.roles_path = "roles"
		chef.cookbooks_path = ["cookbooks", "site-cookbooks"]
        chef.data_bags_path = "databags"
		chef.add_recipe "java"
		chef.add_recipe "cdh::yumrepo"
		chef.add_recipe "cdh::pseudo"
        chef.log_level = :debug
    end
end
