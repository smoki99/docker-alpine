# Alpine Core Builder

Inspired by https://github.com/gliderlabs/docker-alpine/tree/master/builder

This docker container is used to build the alpine-core container itself


# Run in your docker the build for the temporary docker builder

mkdir /tmp/target
docker build .
docker run -it d40e765c0c59 > rootfs.tar.xz

# User rootfs to create new docker
docker import /tmp/target/rootfs.tar.xz smoki99/alpine-core
docker push smoki99/alpine-core

# Testing
 docker run -it alpine-core sh

# Cleanup remove all unused images
docker images -q |xargs docker rmi
