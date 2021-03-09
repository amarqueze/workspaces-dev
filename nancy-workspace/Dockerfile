FROM ubuntu:18.04
ARG workdir="/root"
ARG user="amarquez"
ARG email="alanmarquez@outlook.com"

ENV AUTHOR="Alan M.E <alanmarquez@outlook.com>"
ENV STACK="Git, Nodejs 14.x LTS(angular-cli, ngx-rocket, nest-cli, Typescript)"
ENV WORKSPACE=$workdir
ENV WORKSPACE_VERSION="1.0.0"

WORKDIR $workdir

RUN apt update

# INSTALL UTILS Tools
RUN apt-get install -y software-properties-common
RUN apt install -y wget
RUN apt install -y unzip
RUN apt install -y curl
RUN apt install -y default-jre

# INSTALL GIT
RUN add-apt-repository ppa:git-core/ppa
RUN apt update
RUN apt install -y git
RUN git config --global user.name $user
RUN git config --global user.email $email

# INSTALL NODEJS
RUN curl -fsSL https://deb.nodesource.com/setup_12.x | bash -
RUN apt-get install -y nodejs
RUN npm --global config set user root
RUN npm config set strict-ssl false

# INSTALL PACKAGE GLOBAL
RUN npm i -g typescript tslint @angular/cli @nestjs/cli generator-ngx-rocket



