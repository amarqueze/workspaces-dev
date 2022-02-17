FROM ubuntu:18.04

ARG workdir="/home"
ARG user="amarqueze"
ARG email="alanmarquez@outlook.com"
ARG defaultBranch="master"

# Version Tools
ARG version_nodejs="14"

ENV AUTHOR="Alan M.E <alanmarquez@outlook.com>"
ENV STACK="Git, Nodejs 14.x LTS(angular-cli, ngx-rocket, nest-cli, Typescript)"
ENV WORKSPACE=$workdir
ENV WORKSPACE_VERSION="1.0.1"
ENV NODE_VERSION=$version_nodejs

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
RUN git config --global init.defaultBranch $defaultBranch

# INSTALL NODEJS
RUN curl -fsSL https://deb.nodesource.com/setup_${NODE_VERSION}.x | bash -
RUN apt-get install -y nodejs
RUN npm --global config set user root
RUN npm config set strict-ssl false

# INSTALL PACKAGE GLOBAL
RUN npm i -g typescript tslint @angular/cli generator-ngx-rocket create-react-app create-next-app @loopback/cli



