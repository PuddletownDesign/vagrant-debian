# Puddletown VagrantFile (VirtualBox, Debian, NginX)

I'm working on Mac OSX. This shouldn't have any impact on the following guide.

## Stack to use

*   Vagrant
*   Virtual Box
*   Debian
*   Nginx

## Goals

1.  Create Mirror Dev/Production Enviornments - Local on Vagrant / Remote on Digital Ocean.
2.  Use Git for Deployment
3.  Use Atom as a file editor over SSH

## Installation

This installation guide assumes you have homebrew and the `take` command that comes with oh-my-zsh.

### Download and install Vagrant

`$ brew cask install vagrant`

### Download and install VirtualBox

`$ brew cask install vitualbox`

### Choose vagrant directory

`$ take ~/Files/Sites/debian/`

### Clone the Debian/Box Vagrant file into the directory

Or create a fork if you want to add modifications, then and clone your fork.

`$ git clone https://github.com/PuddletownDesign/vagrant-debian home`
`$ cd home/`

### Install Vagrant Plugins

`$ vagrant plugin install vagrant-vbguest`

### Init Vagrant, Install Debian and Start it up

This process might take a while as it will need to download a Debian ISO, VirtualBox guest additions, and runs updates.

`$ vagrant up`

### Log into the machine Via SSH

`$ vagrant ssh`

The machine is now set up and you are in.
