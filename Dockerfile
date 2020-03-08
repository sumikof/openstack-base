FROM ubuntu:bionic

LABEL maintainer="Sumikof"

ENV DEBIAN_FRONTEND noninteractive

RUN apt update -y && apt -y install software-properties-common
RUN add-apt-repository cloud-archive:stein
RUN apt update -y && \
    apt -y upgrade && \
    apt install -y python-jinja2

ADD render /usr/local/bin
RUN chmod u+x /usr/local/bin/render

RUN mkdir /template
RUN mkdir /entrypoint
