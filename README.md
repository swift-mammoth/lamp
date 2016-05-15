# Simple LAMP Vagrant environment

A simple Vargant project to build a standalone server running Ubuntu, MySql, Apache and PHP.

Will standup the environment and serve a simple php app that will return a random (bad) joke from the database

###Usage:
`vagrant up`

Access the IP address of the vagrant machine:
For example: http://172.28.128.3

To find IP address:

```
vagrant up
vagrant ssh
ipconfig
```
***For simplicity Port Forwarding is enabled:***
http://localhost:8080

###Dependencies:
(I try to use only Puppetlabs supported or approved modules)
[puppetlabs-apache] (https://forge.puppet.com/puppetlabs/apache/0.9.0)
[puppetlabs-mysql] (https://forge.puppet.com/puppetlabs/mysql)
[Vagrant] (https://www.vagrantup.com/)
VMware or VirtualBox

###Assumptions:
Internet access from both host and guest
Ability to allow VMWare or Virtualbox access to host network config

###Issues along the way:
1. mysqli class not found - install php-mysqlnd
2. Ubuntu apparmor was preventing load data infile in mysql with file not found errors:
    1. Edit apparmor config - /etc/apparmor.d/local/usr.sbin.mysqld - add location of datafile.
    2.  Place datafile in accessible location, e.g. /usr/share/myqsl
3. Installing php-mysqlnd requires apache service restart - add puppet notify
