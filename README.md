# Docker Image for NodeJS

## Building the Image

The notable files for building the Docker image are:

* `Dockerfile`
* `assets` - files copied to the image
  * `build` - the build script

The majority of the install logic resides in the
[assets/build](https://github.com/hopsoft/docker-nodejs/blob/master/assets/build) script.
The intent is to mitigate issues that arise from
[stacking too many AUFS layers](https://github.com/dotcloud/docker/issues/1171).

## Vagrant

This project ships with a `Vagrantfile` to simplify the process of using and/or building the image.

### Clone the Project

```
git clone https://github.com/hopsoft/docker-nodejs.git
cd docker-nodejs
```

### Start the Virtual Machine & Login

*Note: Ports 3000, 4000, & 5000 are mapped between the host & the virtual machine.*

```
vagrant up
vagrant ssh
```

### Build the Image

```
sudo docker build -t hopsoft/nodejs /vagrant
```

### Use the Image

```
sudo docker run -i -t -p 3000:3000 hopsoft/nodejs bash
npm install -g echo-server
echo-server 3000
```

Test from the host (or the virtual machine).

```
curl http://localhost:3000/foo/bar
```

