FROM ubuntu:bionic

LABEL maintainer="Sumikof"

ENV DEBIAN_FRONTEND noninteractive

RUN apt update -y && apt -y install software-properties-common
RUN add-apt-repository cloud-archive:stein
RUN apt update -y && \
    apt -y upgrade && \
    apt install -y python-jinja2
