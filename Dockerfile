FROM ubuntu:trusty

RUN apt-get update -y \
    && apt-get install -y wget gnupg iputils-ping telnet curl

RUN curl "https://repo.mongodb.org/apt/ubuntu/dists/trusty/mongodb-org/3.0/multiverse/binary-amd64/mongodb-org-shell_3.0.15_amd64.deb" --output mongo-shell-3.0.deb
RUN curl "https://repo.mongodb.org/apt/ubuntu/dists/trusty/mongodb-org/3.0/multiverse/binary-amd64/mongodb-org-tools_3.0.15_amd64.deb" --output mongo-tools-3.0.deb

RUN dpkg -i ./mongo-shell-3.0.deb
RUN dpkg -i ./mongo-tools-3.0.deb


VOLUME /wd

WORKDIR /wd

