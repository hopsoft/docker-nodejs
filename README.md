# Docker Image for NodeJS

## Docker

The notable files for building the Docker image are:

* Dockerfile
* assets - files copied to the image
  * install - the install script

The majority of the install logic resides in the `assets/install` script.
The intent is to mitigate issues that arise from
[stacking too many AUFS layers](https://github.com/dotcloud/docker/issues/1171).

## Vagrant

This project ships with a `Vagrantfile` to simplify the process of building the Docker image.
Building the image with Vagrant is simple.

```
git clone docker-nodejs
cd docker-nodejs
vagrant up
vagrant ssh
sudo docker build -t hopsoft/nodejs /vagrant
```
