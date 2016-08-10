  Vagrant.configure(2) do |config|
  config.vm.box = "ubuntu/trusty64"
  config.vm.hostname = "cliente1"

  config.vm.provider "virtualbox" do |v|
    v.memory = 2048
  end
  
  config.vm.provision :file do |f|
   f.source = "files"
   f.destination= "/tmp/" 
  end
  config.vm.provision "fix-no-tty", type: "shell" do |s|
    s.privileged = false
    s.inline = "sudo sed -i '/tty/!s/mesg n/tty -s \\&\\& mesg n/' /root/.profile"
   end
  
  config.vm.provision "shell", path: "scripts/pre-install.sh"
  config.vm.provision "shell", path: "scripts/install.sh"
  
  end
