# testcab/alps

An [alpine](https://hub.docker.com/_/alpine) docker image with useful development tools pre-installed.

## Default Shell

The default shell has been changed to `/bin/bash` from `/bin/sh`.

## Installed Packages

In addition to what's provided by alpine base image, the following is installed as a virtual package `.dev`:

* bash
* bind-tools
* curl
* jq
* openssh-client
