# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "puppetlabs/centos-6.5-64-puppet"
  config.vm.hostname = "web-performance-tuning.local"
  config.vm.network :private_network, ip: "192.168.56.130" 

  config.vm.provider :virtualbox do |vb|
    vb.name = "web-performance-tuning"
    vb.customize ["modifyvm", :id, "--memory", "1024"]
  end

  config.vm.provision :puppet, :options => '--modulepath="/vagrant/puppet/modules":"/vagrant/puppet/roles"' do |puppet|
     puppet.manifests_path = "./puppet/manifests"
     puppet.manifest_file  = "app.pp"
  end

end
