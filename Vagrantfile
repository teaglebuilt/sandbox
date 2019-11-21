# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.
Vagrant.configure("2") do |config|
  config.vm.box = "centos/7"
  config.vm.hostname = "sandbox"
  config.vm.synced_folder ".", "/vagrant", disabled: true
  config.vm.synced_folder "/Users/dillanteagle/workspace/sandbox", "/sandbox"

  config.vm.define "sandboxmaster" do |master|
    master.vm.box = "centos/7"
    master.vm.hostname = "sandboxmaster"
    master.vm.provider "virtualbox" do |vb|
      vb.cpus = 1
      vb.memory = 1024
      vb.name = "SandboxMaster"
    end
    config.vm.network "public_network"
  end

  config.vm.define "ansibleagentone" do |agent|
    agent.vm.box = "centos/7"
    agent.vm.hostname = "sandboxagentone"
    agent.vm.provider "virtualbox" do |vb|
      vb.name = "SandBoxAgentOne"
      vb.cpus = 1
      vb.memory = 1024
    end    
    config.vm.network "public_network"
  end

  config.vm.define "ansibleagenttwo" do |agent|
    agent.vm.box = "centos/7"
    agent.vm.hostname = "sandboxagenttwo"
    agent.vm.provider "virtualbox" do |vb|
      vb.name = "SandBoxAgentTwo"
      vb.cpus = 1
      vb.memory = 1024
    end    
    config.vm.network "public_network"
  end

end
