FROM ubuntu:14.04
MAINTAINER https://github.com/aronahl
RUN apt-get update && \
    apt-get dist-upgrade -fy && \
    apt-get install -fy curl vim-nox python-pip && \
    pip install awscli && \
    apt-get autoclean -y && \
    apt-get clean -y && \
    apt-get autoremove -y 
CMD bash
