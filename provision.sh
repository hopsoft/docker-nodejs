#!/bin/bash
set -e

export DEBIAN_FRONTEND=noninteractive

apt-get -y --force-yes install \
  lsb-release \
  wget

wget -qO- https://get.docker.io/gpg | sudo apt-key add -
echo deb http://get.docker.io/ubuntu docker main > /etc/apt/sources.list.d/docker.list
apt-get -q update
apt-get -y --force-yes install \
  aufs-tools \
  lxc-docker

# note: how to update the kernel with aufs support so docker will use aufs by default
#apt-get -y --force-yes install \
# linux-image-generic-lts-$(lsb_release -cs) \
# linux-headers-generic-lts-$(lsb_release -cs)
#reboot

