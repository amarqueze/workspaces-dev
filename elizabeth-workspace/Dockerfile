FROM ubuntu:18.04

ARG workdir="/home"
ARG user="Alan M.E"
ARG email="alanmarquez@outlook.com"
ARG defaultBranch="master"

# Version Tools
ARG version_nodejs="16"

ENV AUTHOR="Alan M.E <alanmarquez@outlook.com>"
ENV STACK="Git, Nodejs 14.x LTS, Erlang and Elixir"
ENV WORKSPACE=$workdir
ENV WORKSPACE_VERSION="1.0.2"
ENV NODE_VERSION=$version_nodejs

WORKDIR $workdir

RUN apt update

# INSTALL UTILS Tools
RUN apt-get install -y software-properties-common
RUN apt install -y wget
RUN apt install -y unzip
RUN apt install -y curl

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

# INSTALL Erlang
RUN wget https://packages.erlang-solutions.com/erlang-solutions_2.0_all.deb && dpkg -i erlang-solutions_2.0_all.deb
RUN apt-get update
RUN apt-get install esl-erlang -y

# INSTALL Elixir
RUN apt-get install elixir -y

CMD ["/bin/bash"]