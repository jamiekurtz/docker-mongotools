FROM ubuntu:jammy

RUN apt-get update -y \
    && apt-get install -y wget gnupg iputils-ping telnet curl

RUN curl -fsSL https://pgp.mongodb.com/server-6.0.asc | gpg -o /usr/share/keyrings/mongodb-server-6.0.gpg --dearmor
RUN echo "deb [ arch=amd64,arm64 signed-by=/usr/share/keyrings/mongodb-server-6.0.gpg ] https://repo.mongodb.org/apt/ubuntu jammy/mongodb-org/6.0 multiverse" | tee /etc/apt/sources.list.d/mongodb-org-6.0.list


RUN apt-get update -y \
    && apt-get install -y mongodb-mongosh \
    && apt-get install -y mongodb-org-tools

VOLUME /wd

WORKDIR /wd

