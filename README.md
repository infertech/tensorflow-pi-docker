# Tensorflow in Docker for Raspberry

This image was developed for the raspberry pi but actually
it should run normally on any armv7l system.

## Description

All necessary python wheels (including tensorflow) are installed
from two extra package indices:

* https://www.piwheels.org/simple/
* https://pypi.intropy.work/simple/

## Usage

To build an image, run the following command:

```
export VERSION=2.0.0
docker build . --build-arg TENSORFLOW_VERSION=$VERSION -t tensorflow:$VERSION-py3-pi
```

> In this example version `2.0.0` is used, but you can change it if required.
> Note that your version should be installable from one of extra package
> indices listed above.

## Docker Hub
Latest versions of the image are pre-built and available on the
[docker hub](https://hub.docker.com/repository/docker/intropytech/tensorflow).
