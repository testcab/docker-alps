# testcab/alps

[![Docker image size](https://badgen.net/docker/size/testcab/alps)](https://hub.docker.com/r/testcab/alps)
[![Travis build](https://badgen.net/travis/testcab/docker-alps)](https://travis-ci.org/testcab/docker-alps)

An [alpine](https://hub.docker.com/_/alpine) docker image with useful development tools pre-installed.

## Supported tags and respective `Dockerfile` links

* [`3.0.0`, `3.0`, `3`, `latest`](https://github.com/testcab/docker-alps/blob/main/Dockerfile), based on `alpine:3.18`, amd64 and arm64 multi-arch image.
* [`2.0.0`, `2.0`, `2`](https://github.com/testcab/docker-alps/blob/2/Dockerfile), based on `alpine:3.15`, EOL now.
* [`1.0.0`, `1.0`, `1`](https://github.com/testcab/docker-alps/blob/1/Dockerfile), based on `alpine:3.11.6`, EOL now.

## Default Shell

The default shell has been changed to `/bin/bash` from `/bin/sh`.

## Default Working Directory

The default working directory has been changed to `/root`.

## Installed Packages

In addition to what's provided by alpine base image, the following is installed as a virtual package `.dev`:

* bash
* bind-tools
* curl
* httpie
* jq
* mariadb-client
* mysql-client
* nfs-utils
* openssh-client
* tini

And the following executable is added to `/usr/local/bin`:

* kubectl

## Usage

### Docker

```
alias alps='docker run --rm -it testcab/alps'
alps
```

### Kubernetes

```
alias alps='kubectl run alps --image=testcab/alps --rm -it
alps
```
