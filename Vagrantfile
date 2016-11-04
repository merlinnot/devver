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

  # Always use Vagrant's default insecure key
  config.ssh.insert_key = false

  # Provision ssh keys and git configuration
  config.vm.provision "file", source: "~/.ssh/id_rsa", destination: "/root/.ssh/id_rsa"
  config.vm.provision "file", source: "~/.ssh/id_rsa.pub", destination: "/root/.ssh/id_rsa.pub"
  config.vm.provision "file", source: "~/.ssh/known_hosts", destination: "/root/.ssh/known_hosts"
  config.vm.provision "file", source: "~/.gitconfig", destination: "/root/.gitconfig"

  # Docker provider
  config.vm.provider "docker" do |d|
    d.image = "merlinnot/dev"
    d.remains_running = true
    d.has_ssh = true
    d.ports = ["8081:8081", "8082:8082", "8083:8083"]
  end
end
