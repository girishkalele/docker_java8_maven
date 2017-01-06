#
# Java 1.8 & Maven Dockerfile
#
# https://github.com/jamesdbloom/docker_java8_maven
#

# pull base image.
FROM java:8

# maintainer details
MAINTAINER James Bloom "jamesdbloom@gmail.com"

# update packages and install maven
RUN  \
  export DEBIAN_FRONTEND=noninteractive && \
  sed -i 's/# \(.*multiverse$\)/\1/g' /etc/apt/sources.list && \
  apt-get update && \
  apt-get -y upgrade && \
  apt-get install -y vim wget curl maven && \
  update-alternatives --set java /usr/lib/jvm/java-8-openjdk-amd64/jre/bin/java

# run terminal
CMD ["/bin/bash"]
