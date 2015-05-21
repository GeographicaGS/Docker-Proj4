#!/bin/env sh

# Compile and install Proj4

cd /usr/local/src/proj
./configure  &&  make  &&  sudo make install
ldconfig
cd
exit
