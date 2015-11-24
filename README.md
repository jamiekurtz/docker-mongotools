A simple Dockerfile used to build the jakurtz/mongotools image found on [Dockerhub](https://hub.docker.com/).

You can run the corresponding [image](https://hub.docker.com/r/jakurtz/mongotools/) by executing:

    docker run -it --rm jakurtz/mongotools

This image has a single volume that mounts to `/wd` (short for "working directory"), which is the current directory the container will be set to upon running it. This allows you to read/write files to some directory on your host machine - e.g. the current directory:

    docker run -it -v `pwd`:/wd --rm jakurtz/mongotools



