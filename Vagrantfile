# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
  config.vm.box = "ubuntu/trusty64"

  config.vm.network "private_network", type: "dhcp"

  config.vm.provision "shell", path: "./provision/shell/install_puppet_agent.sh"
  
  config.vm.provision "puppet" do |puppet|
    puppet.manifests_path = "./provision/puppet/manifests"
    puppet.module_path    = [ "./provision/puppet/modules/custom", "./provision/puppet/modules/pe-modules" ]
    puppet.manifest_file  = "site.pp"
    puppet.environment = "production"
    puppet.environment_path  = "./provision/puppet/"
  end
end
