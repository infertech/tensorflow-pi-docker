FROM python:3.7

# Set additional python package indices
RUN pip config --global set global.extra-index-url \
        "https://www.piwheels.org/simple/ https://pypi.intropy.work/simple/"

# Install hdf5 library
RUN set -ex; \
    apt-get update; \
    apt-get install -y --no-install-recommends \
        libhdf5-dev; \
    rm -rf /var/lib/apt/lists/*

# Set the tensorflow version and install it
ARG TENSORFLOW_VERSION="2.0.0"

RUN pip install --no-cache-dir tensorflow==$TENSORFLOW_VERSION
