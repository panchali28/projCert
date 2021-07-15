#!/bin/sh
wget https://apt.puppetlabs.com/puppet6-release-bionic.deb
sudo dpkg -i puppet6-release-bionic.deb
sudo apt update
sudo apt install -y puppetserver
sudo service puppetserver start
cat >> /etc/puppetlabs/puppet/puppet.conf <<EOF
dns_alt_name = puppet
[main]
certname = puppet
server = puppet
environment = production
EOF

