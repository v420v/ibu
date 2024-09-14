FROM --platform=linux/x86_64 ubuntu:latest

RUN apt-get update && \
    apt-get -y install sudo && \
    sudo apt-get -y install build-essential && \
    sudo apt-get -y install git && \
    sudo apt-get -y install vim && \
    sudo apt-get -y install man && \
    sudo apt-get -y install manpages-dev && \
    apt-get install -y strace

VOLUME /root/env
WORKDIR /root/env

