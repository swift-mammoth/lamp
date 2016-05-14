#!/bin/bash                                                                                                                       
puppet_agent=$(puppet --version)

if [ $puppet_agent != '4.4.2' ]; then
  wget https://apt.puppetlabs.com/puppetlabs-release-pc1-trusty.deb -O /tmp/puppetlabs-release-pc1-trusty.deb
  dpkg -i /tmp/puppetlabs-release-pc1-trusty.deb
  apt-get update
  apt-get -y install puppet-agent
else
  echo Puppet Agent installed
  puppet --version
fi
  echo start Puppet Agent
  /opt/puppetlabs/bin/puppet resource service puppet ensure=running enable=true