FROM ubuntu:14.04
MAINTAINER https://github.com/aronahl
RUN locale-gen en_US.UTF-8  
ENV LANG=en_US.UTF-8  \
    LANGUAGE=en_US:en  \
    LC_ALL=en_US.UTF-8 \
    DEBIAN_FRONTEND=noninteractive \
    HOME=/root
RUN apt-get update && \
    apt-get dist-upgrade -fy && \
    apt-get install --no-install-recommends -fy \
        bsdmainutils \
        curl \
        vim-nox \
        w3m \
        command-not-found \
        man \
        python-pip && \
    pip install awscli && \
    apt-get remove -y python-pip && \
    apt-get autoclean -y && \
    apt-get clean -y && \
    apt-get autoremove -y && \
    rm -rf /var/lib/apt/lists/*
CMD bash
