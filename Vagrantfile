# -*- mode: ruby -*-
# vi: set ft=ruby :

# Specify Vagrant version and Vagrant API version
Vagrant.require_version ">= 1.6.0"
ENV['VAGRANT_DEFAULT_PROVIDER'] = 'docker'

# Create and configure the Docker container
Vagrant.configure("2") do |config|

  # Assign a friendly name to this host VM
  config.vm.hostname = "dev"

  # Vagrant uses vagrant user by default. Docker uses root.
  # Use root, it is a development environment anyway.
  config.ssh.username = "root"

  # Enable X11 forwarding
  config.ssh.forward_x11 = true

  # Since we have all the powers of a root user, make it easy
  # to edit files on our host machine.
  config.vm.synced_folder ".", "/vagrant/",
    user: ENV['USER'],
    group: ENV['USER']

  # Always use Vagrant's default insecure key
  config.ssh.insert_key = true

  # Provision ssh keys and git configuration
  config.vm.provision "file", source: "~/.ssh/id_rsa", destination: "/root/.ssh/id_rsa"
  config.vm.provision "file", source: "~/.ssh/id_rsa.pub", destination: "/root/.ssh/id_rsa.pub"
  config.vm.provision "file", source: "~/.ssh/known_hosts", destination: "/root/.ssh/known_hosts"
  config.vm.provision "file", source: "~/.gitconfig", destination: "/root/.gitconfig"

  # Forwarding ports with auto-correction
  config.vm.network "forwarded_port", guest: 3000, host: 3000, auto_correct: true
  config.vm.network "forwarded_port", guest: 8000, host: 8000, auto_correct: true
  config.vm.network "forwarded_port", guest: 8080, host: 8080, auto_correct: true
  config.vm.network "forwarded_port", guest: 8081, host: 8081, auto_correct: true
  config.vm.network "forwarded_port", guest: 8082, host: 8082, auto_correct: true
  config.vm.network "forwarded_port", guest: 14500, host: 14500, auto_correct: true

  # Docker provider
  config.vm.provider "docker" do |d|
    d.image = "merlinnot/dev"
    d.remains_running = true
    d.has_ssh = true
  end
end
