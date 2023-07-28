FROM ubuntu:bionic

RUN apt-get update -y \
    && apt-get install -y wget gnupg iputils-ping telnet

RUN wget -qO - https://www.mongodb.org/static/pgp/server-3.6.asc | apt-key add -
RUN echo "deb [ arch=amd64 ] https://repo.mongodb.org/apt/ubuntu bionic/mongodb-org/3.6 multiverse" | tee /etc/apt/sources.list.d/mongodb-org-3.6.list

RUN apt-get update -y \
    && apt-get install -y mongodb-org-shell \
    && apt-get install -y mongodb-org-tools

VOLUME /wd

WORKDIR /wd

