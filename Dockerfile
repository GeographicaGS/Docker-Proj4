##
# cayetanobv/proj4
#
# This creates an Ubuntu derived base image that installs PROJ.4 v.XXX
# with python bindings
#

# Ubuntu 14.04 Trusty Tahyr
FROM ubuntu:trusty

MAINTAINER Cayetano Benavent <cayetano.benavent@geographica.gs>

# Install basic dependencies
RUN apt-get update -y && \
    apt-get install -y \
    wget \
    unzip \
    software-properties-common \
    build-essential \
    subversion \
    python-software-properties \
    python-dev \
    python-numpy

# Get the PROJ.4 source
ADD ./getsources_proj4.sh /tmp/
RUN sh /tmp/getsources_proj4.sh

# Compile and install PROJ.4
ADD ./compileandinstall_proj4.sh /tmp/
RUN sh /tmp/compileandinstall_proj4.sh

# Install python pyproj
# Python interface to PROJ.4 library
ADD ./getandinstall_pyproj.sh /tmp/
RUN sh /tmp/getandinstall_pyproj.sh

# Output version
CMD proj && geod && cs2cs
