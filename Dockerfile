#
# Java 1.8 & Maven Dockerfile
#
# https://github.com/jamesdbloom/docker_java8_maven
#

# pull base image.
FROM sdorra/oracle-java-8

# maintainer details
MAINTAINER James Bloom "jamesdbloom@gmail.com"

# update packages and install maven
RUN  \
  export DEBIAN_FRONTEND=noninteractive && \
  sed -i 's/# \(.*multiverse$\)/\1/g' /etc/apt/sources.list && \
  apt-get update && \
  apt-get install -y vim wget curl maven make

# run terminal
CMD ["/bin/bash"]
