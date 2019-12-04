# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "centos/7"
  config.vm.hostname = "sandbox"
  config.vm.synced_folder ".", "/vagrant", disabled: true
  config.vm.synced_folder "/Users/dillanteagle/workspace/sandbox", "/sandbox"
  config.vm.provision "shell", path: "scripts/configure_ssh.sh"
  config.vm.provision "shell", path: "scripts/add_user.sh", args: ['ansible']
  config.vm.provision "shell", path: "scripts/add_keys.sh"

  config.vm.define "sandboxmaster" do |master|
    master.vm.box = "centos/7"
    master.vm.hostname = "sandboxmaster"
    master.vm.provider "virtualbox" do |vb|
      vb.cpus = 1
      vb.memory = 1024
      vb.name = "SandboxMaster"
    end
    master.vm.provision "last", type: "shell", path: "prepare_master.sh"
    master.vm.network "public_network", ip: "192.168.0.190"
  end

  config.vm.define "ansibleagentone" do |agent|
    agent.vm.box = "centos/7"
    agent.vm.hostname = "sandboxagentone"
    agent.vm.provider "virtualbox" do |vb|
      vb.name = "SandBoxAgentOne"
      vb.cpus = 1
      vb.memory = 1024
    end    
    agent.vm.network "public_network", ip: "192.168.0.191"
  end

  config.vm.define "ansibleagenttwo" do |agent|
    agent.vm.box = "centos/7"
    agent.vm.hostname = "sandboxagenttwo"
    agent.vm.provider "virtualbox" do |vb|
      vb.name = "SandBoxAgentTwo"
      vb.cpus = 1
      vb.memory = 1024
    end    
    agent.vm.network "public_network", ip: "192.168.0.192"
  end

end
