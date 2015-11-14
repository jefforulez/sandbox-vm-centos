#!/bin/bash

PATH=/usr/bin

#
# system
#

sudo /usr/sbin/service firewalld stop
sudo /usr/sbin/chkconfig firewalld off

sudo yum update -y
sudo yum install -y automake gcc gcc-c++ libtool
sudo yum install -y git vim

pushd /vagrant

exit
