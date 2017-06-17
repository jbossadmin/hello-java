FROM ubuntu:16.04
MAINTAINER Praveen.mali@imaginea.com

#Updating repository
RUN apt-get update

#Downloading java
RUN wget -O /tmp/jdk-8u111-linux-x64.tar.gz --no-cookies --no-check-certificate --header "Cookie: gpw_e24=http%3A%2F%2Fwww.oracle.com%2F; oraclelicense=accept-securebackup-cookie" "http://download.oracle.com/otn-pub/java/jdk/8u111-b14/jdk-8u111-linux-x64.tar.gz"
RUN mkdir /usr/local/java && \
    tar -xvzf /tmp/jdk-8u111-linux-x64.tar.gz -C /usr/local/java

# Setting up environment variables for JAVA
ENV JAVA_HOME=/usr/local/java/jdk1.8.0_111


FROM Ubuntu17



