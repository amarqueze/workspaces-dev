#!/bin/bash -x

#default openjdk 11
case $1 in
  "jdk13")
    curl -O https://download.java.net/java/GA/jdk13/5b8a42f3905b406298b72d750b6919f6/33/GPL/openjdk-13_linux-x64_bin.tar.gz
    tar xvf openjdk-13_linux-x64_bin.tar.gz
    mv jdk-13 /opt/openjdk
    ;;
  "jdk14")
    curl -O https://download.java.net/java/GA/jdk14/076bab302c7b4508975440c56f6cc26a/36/GPL/openjdk-14_linux-x64_bin.tar.gz
    tar xvf openjdk-14_linux-x64_bin.tar.gz
    mv jdk-14 /opt/openjdk
    ;;

  "jdk15")  
    curl -O https://download.java.net/java/GA/jdk15.0.1/51f4f36ad4ef43e39d0dfdbaf6549e32/9/GPL/openjdk-15.0.1_linux-x64_bin.tar.gz
    tar xvf openjdk-15.0.1_linux-x64_bin.tar.gz
    mv jdk-15.0.1 /opt/openjdk
    ;;

  "jdk17")    
    curl -O https://download.java.net/java/GA/jdk17/0d483333a00540d886896bac774ff48b/35/GPL/openjdk-17_linux-x64_bin.tar.gz
    tar xvf openjdk-17_linux-x64_bin.tar.gz
    mv jdk-17 /opt/openjdk
    ;;

  *)
    curl -O https://download.java.net/java/GA/jdk11/9/GPL/openjdk-11.0.2_linux-x64_bin.tar.gz
    tar xvf openjdk-11.0.2_linux-x64_bin.tar.gz
    mv jdk-11.0.2 /opt/openjdk
    ;;
esac