FROM ubuntu:17.04

MAINTAINER Seong Yong-ju <sei40kr@gmail.com>

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && \
    apt-get install -y --no-install-recommends 'software-properties-common=0.96.24.13' && \
    rm -rf /var/lib/apt/lists/* /var/cache/apt/archives/*

RUN apt-add-repository ppa:ansible/ansible && \
    apt-get update && \
    apt-get install -y --no-install-recommends 'ansible=2.2.1.0-1' && \
    rm -rf /var/lib/apt/lists/* /var/cache/apt/archives/*

RUN printf '[local]\nlocalhost\n' >/etc/ansible/hosts

