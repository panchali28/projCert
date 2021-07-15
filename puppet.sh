#!/bin/sh
wget https://apt.puppetlabs.com/puppet6-release-bionic.deb
sudo dpkg -i puppet6-release-bionic.deb
sudo apt update
sudo apt install -y puppet-agent
sudo service puppet start
cat >> /etc/puppetlabs/puppet/puppet.conf << EOF
[main]
server = puppet
EOF
 sudo /opt/puppetlabs/bin/puppet agent -t
