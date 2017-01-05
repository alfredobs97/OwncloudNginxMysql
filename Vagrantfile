Vagrant.configure("2") do |config|
  config.vm.define "owncloud" do |owncloud|
    owncloud.vm.box = "ubuntu/trusty64"
    owncloud.vm.hostname = 'owncloud'
    owncloud.vm.network :public_network, ip: "192.168.8.16"
    owncloud.vm.synced_folder "owncloud/owncloud", "/var/www/html/owncloud",
	owner: "www-data",
  	group: "www-data",
  	mount_options: ["dmode=0770,fmode=0770"]
    owncloud.vm.provider :virtualbox do |v|
      v.customize ["modifyvm", :id, "--memory", 2048]
      v.customize ["modifyvm", :id, "--name", "owncloud"]
    end
    owncloud.vm.provision :ansible do |ansible|
                ansible.playbook = "install.yml"
end
    config.vm.provision "shell", inline: <<-SHELL
	apt-get update -y && apt-get upgrade -y
	mkdir -p /etc/nginx/ssl
	SHELL
end
end

