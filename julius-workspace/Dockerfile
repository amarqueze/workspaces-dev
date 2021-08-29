FROM ubuntu:18.04

ARG workdir="/home"
ARG user="Alan M.E"
ARG email="alanmarquez@outlook.com"

# Version Tools
ARG version_nodejs="14"
ARG version_gradle="7.2"

ENV AUTHOR="Alan M.E <alanmarquez@outlook.com>"
ENV STACK="Git, Nodejs 14.x LTS, OpenJDK-11, Gradle 7, Maven"
ENV WORKSPACE=$workdir
ENV WORKSPACE_VERSION="1.0.2"
ENV GRADLE_VERSION=$version_gradle
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
RUN git config --global init.defaultBranch trunk

# INSTALL NODEJS
RUN curl -fsSL https://deb.nodesource.com/setup_${NODE_VERSION}.x | bash -
RUN apt-get install -y nodejs
RUN npm --global config set user root
RUN npm config set strict-ssl false

# INSTALL OPEN JDK 11
ENV JAVA_HOME="/usr/lib/jvm/java-11-openjdk-amd64"
RUN apt install -y openjdk-11-jdk

# INSTALL Gradle
ENV GRADLE_HOME=/opt/gradle/gradle-${GRADLE_VERSION}
ENV PATH=${GRADLE_HOME}/bin:${PATH}
RUN wget --no-check-certificate  https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip -P /tmp
RUN unzip -d /opt/gradle /tmp/gradle-*.zip && rm /tmp/gradle-*.zip

# INSTALL MAVEN
RUN apt install maven -y

CMD ["/bin/bash"]
