# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

	config.vm.box = "bento/centos-7.1"
	config.vm.provider :virtualbox do |vb|
		vb.customize ['modifyvm', :id, '--memory', '1024', '--cpus', '2']
		vb.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
		vb.customize ["modifyvm", :id, "--natdnsproxy1", "on"]
	end

	if ! ENV['VAGRANT_BRIEF']
		config.vm.provision :shell, path: "./scripts/vagrant_provision.sh"
	end

end
