FROM ubuntu:20.04

MAINTAINER Olga Shalganova, olga.shalganova@jetbrains.com

RUN export DEBIAN_FRONTEND=noninteractive && apt-get update -yq && apt-get install -yq ssh rsync jq python3-pip curl zip

RUN curl https://rclone.org/install.sh | bash -s beta

RUN pip3 install awscli --upgrade --user
