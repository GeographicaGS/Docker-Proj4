#!/bin/env sh

# Get and install python pyproj
# Python interface to PROJ.4 C library
# build pyproj using installed proj library and data files
# (instead of bundled source and data with pyproj)

cd /tmp && mkdir pyproj_src && cd pyproj_src
wget https://github.com/jswhit/pyproj/archive/master.zip
unzip master.zip
rm master.zip
cd pyproj-master
python setup-proj.py build
python setup-proj.py install
exit
