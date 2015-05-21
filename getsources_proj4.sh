#!/bin/env sh

# Get Proj4 sources from OSGEO.ORG
# You can change Proj4 version

#export PROJ_VERSION="/branches/4.9"
export PROJ_VERSION="trunk"
export PROJ_DATGRD="proj-datumgrid-1.5.zip"
mkdir -p /usr/local/src/ && cd /usr/local/src
svn co http://svn.osgeo.org/metacrs/proj/$PROJ_VERSION/proj/
wget http://download.osgeo.org/proj/$PROJ_DATGRD
mv $PROJ_DATGRD /usr/local/src/proj/nad
cd /usr/local/src/proj/nad
unzip -o $PROJ_DATGRD
exit
