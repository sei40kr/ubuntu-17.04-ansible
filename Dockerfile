FROM ubuntu:17.04

MAINTAINER Seong Yong-ju <sei40kr@gmail.com>

USER root

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update -qq && \
    apt-get install -qq --no-install-recommends software-properties-common

RUN apt-add-repository ppa:ansible/ansible && \
    apt-get update -qq && \
    apt-get install -qq --no-install-recommends ansible && \
    apt-get clean && rm -rf /var/cache/apt/archives/* /var/lib/apt/lists/*

RUN echo '[local]\nlocalhost\n' >/etc/ansible/hosts

