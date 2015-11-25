# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

	config.vm.box = "bento/centos-7.1"
	config.vm.provider :virtualbox do |vb|
		vb.name = "sandbox-vm-centos"
		vb.customize ['modifyvm', :id, '--memory', '1024', '--cpus', '2']
		vb.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
		vb.customize ["modifyvm", :id, "--natdnsproxy1", "on"]
	end

	if ENV['VAGRANT_MOUNT_DATA']
		config.vm.synced_folder ENV['VAGRANT_MOUNT_DATA'], "/mnt/vagrant_data",
		create: true, owner: "vagrant", group: "www-data", mount_options: ['dmode=550,fmode=440']
	end

	if ENV['VAGRANT_SKIP_PROVISION']
		config.vm.provision :shell, path: "./scripts/vagrant_provision.sh"
	end

end
