# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  # All Vagrant configuration is done here. The most common configuration
  # options are documented and commented below. For a complete reference,
  # please see the online documentation at vagrantup.com.

  # Every Vagrant virtual environment requires a box to build off of.
  config.vm.box = "rcsbase_oel65_vmw"

  # The url from where the 'config.vm.box' box will be fetched if it
  # doesn't already exist on the user's system.
  config.vm.box_url = "http://installers.sherwin.com/VMImages/rcs_base_oel65_1.0.6.box"

  # Second network adapter...
  config.vm.network :public_network

  # Define multiple puppet nodes...
  config.vm.define "puppet1", primary: true do |puppet1|
    puppet1.vm.hostname = "puppet1"
    # VMWare Fusion configuration
    puppet1.vm.provider "vmware_fusion" do |v|
      #v.gui = true
      v.vmx["numvcpus"] = "1"
      v.vmx["memsize"] = "1024"
      v.vmx["vhv.enable"] = "TRUE"
      v.vmx["ethernet1.generatedaddress"] = nil
      v.vmx["ethernet1.addresstype"] = "static"
      v.vmx["ethernet1.connectiontype"] = "nat"
      v.vmx["ethernet1.present"] = "TRUE"
      v.vmx["ethernet1.address"] = "00:0C:29:9E:08:52"
    end
  end

  config.vm.define "puppet2" do |puppet2|
    puppet2.vm.hostname = "puppet2"
    # VMWare Fusion configuration
    puppet2.vm.provider "vmware_fusion" do |v|
      #v.gui = true
      v.vmx["numvcpus"] = "1"
      v.vmx["memsize"] = "1024"
      v.vmx["vhv.enable"] = "TRUE"
      v.vmx["ethernet1.generatedaddress"] = nil
      v.vmx["ethernet1.addresstype"] = "static"
      v.vmx["ethernet1.connectiontype"] = "nat"
      v.vmx["ethernet1.present"] = "TRUE"
      v.vmx["ethernet1.address"] = "00:0C:29:FA:27:ED"
    end
  end

  config.vm.define "puppet3", autostart: false do |puppet3|
    puppet3.vm.hostname = "puppet3"
    # VMWare Fusion configuration
    puppet3.vm.provider "vmware_fusion" do |v|
      #v.gui = true
      v.vmx["numvcpus"] = "1"
      v.vmx["memsize"] = "1024"
      v.vmx["vhv.enable"] = "TRUE"
      v.vmx["ethernet1.generatedaddress"] = nil
      v.vmx["ethernet1.addresstype"] = "static"
      v.vmx["ethernet1.connectiontype"] = "nat"
      v.vmx["ethernet1.present"] = "TRUE"
      v.vmx["ethernet1.address"] = "00:0C:29:C9:51:54"
    end
  end

  config.vm.define "puppet4", autostart: false do |puppet4|
    puppet4.vm.hostname = "puppet4"
    # VMWare Fusion configuration
    puppet4.vm.provider "vmware_fusion" do |v|
      #v.gui = true
      v.vmx["numvcpus"] = "1"
      v.vmx["memsize"] = "1024"
      v.vmx["vhv.enable"] = "TRUE"
      v.vmx["ethernet1.generatedaddress"] = nil
      v.vmx["ethernet1.addresstype"] = "static"
      v.vmx["ethernet1.connectiontype"] = "nat"
      v.vmx["ethernet1.present"] = "TRUE"
      v.vmx["ethernet1.address"] = "00:0C:29:B1:61:C7"
    end
  end

  # Forward a port from the guest to the host, which allows for outside
  # computers to access the VM, whereas host only networking does not.
  # config.vm.forward_port 80, 8080

  # Share an additional folder to the guest VM. The first argument is
  # an identifier, the second is the path on the guest to mount the
  # folder, and the third is the path on the host to the actual folder.
  # config.vm.synced_folder "./", "/vagrant", id: "vagrant-root"
  config.vm.synced_folder "/Users/jjg05s/Development/puppet/", "/puppet", id: "puppet-modules"
  config.vm.synced_folder "/sw/logs", "/sw/logs", create: true, id: "sw-logs"
  config.vm.synced_folder "/sw/installs", "/sw/installs", create: true, id: "sw-installs"
  config.vm.synced_folder "/sw/home", "/sw/home", create: true, id: "sw-home"
  config.vm.synced_folder "/sw/pkg", "/sw/pkg", create: true, id: "sw-pkg"

  # Provisioning...
  config.vm.provision "shell", path: "./provision/vagrant.sh"

  # SSH configuration...
  #config.ssh.username = "jjg05s"

end
