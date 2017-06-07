Vagrant LAMP
============

Requirements
------------
* VirtualBox <http://www.virtualbox.org>
* Vagrant <http://www.vagrantup.com>
* Git <http://git-scm.com/>

Usage
-----

#### Apache
The Apache server is available at <http://192.168.21.11>
If you have already installed vagrant-hostsupdater which manages your local hosts file,
you can also access with ubuntu-xenial.net 

#### MySQL
Username: root
Password: password

All of configration params are written in ansible/vars/all.yml.
So if you want to change configirations to apply your emvironment,
please fix that.

Technical Details
-----------------
* Ubuntu bento/ubuntu-16.04
* Apache 2.4
* PHP 7.1
* MySQL 5.7
* Composer

