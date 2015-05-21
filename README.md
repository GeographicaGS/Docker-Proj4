# Docker Proj4

Proj4 Docker image for testing purposes (you can choose Proj4 version).
Added Python bindings.

## Building image clonning this repository
Build image and run container (cloning this Git repository):

```bash
$ git clone https://github.com/GeographicaGS/Docker-Proj4.git
$ docker build -t geographica/proj4:testing .
$ docker run --name proj4 -it --rm geographica/proj4:testing /bin/bash
```

## DockerHub
TODO...

## Credits
- https://trac.osgeo.org/proj/
- https://github.com/jswhit/pyproj

