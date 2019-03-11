# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
 
  config.vm.box = "centos/7"

  config.vm.hostname = "jenkinsan"
  config.vm.network "forwarded_port", guest: 80, host: 8082, auto_correct: true
  config.vm.network "private_network", ip: "192.168.33.20"
  # config.vm.synced_folder ".", "/vagrant", type: "rsync", rsync__exclude: ".git/"
  # config.vm.synced_folder ".", "/vagrant", disabled: true
  config.vm.synced_folder ".", "/vagrant", type: "virtualbox"
  # config.vm.synced_folder "../jenkins-apps", "/home/vagrant/jenkins-apps", type: "virtualbox"
 
  config.vm.provider "virtualbox" do |vb|
    vb.name = "Jenkins Ansible"
    vb.linked_clone = true
    vb.memory = "1024"
    vb.cpus = 1
  end

  config.vm.provision "ansible_local", run: 'always' do |ansible|
    ansible.become = true
    ansible.galaxy_role_file = 'requirements.yml'
    # ansible.galaxy_roles_path = '/etc/ansible/roles'
    ansible.playbook = "ansible/essential_playbook.yml"
    ansible.verbose = "v"
  end
  # config.vm.provision "shell", inline: <<-SHELL
    # sudo service jenkins restart
  # SHELL
end
