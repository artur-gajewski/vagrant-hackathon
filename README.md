Vagrant Hackathon
=================

###Prerequisites

In order to get up-to-speed at the hackathon, I strongly suggest you go ahead and install all required software dependancies ahead of time.

You will need the following:

* [Ruby](http://www.ruby-lang.org/en/downloads/)
* [Vagrant](http://downloads.vagrantup.com/)
* [Oracle VirtualBox](https://www.virtualbox.org/wiki/Downloads)

To check if you already have Ruby installed, you can enter this at the command line:

        $ ruby -v

###Installation

Clone this repository into one of your projects.

Vagrantfile is the bootstrap for the Vagrant setup and folder support/ contains all puppet installation directives.

By default, the folder of the Vagrantfile will be the server root. If you are fine with this, you can go ahead and start up vagrant.

        $ vagrant up

If you wish to modify the vagrant setup to be used, for example with Symfony2, you need to tweak few files we will go through at the hackathon.