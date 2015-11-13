#ubuntu
FROM ubuntu:14.04
#  dfasfasf
MAINTAINER hnngm
#  dsafasf
ADD sources.list /etc/apt/
#  dsafas
RUN apt-get update
#  dasfasdf
RUN apt-get install -y vim
# wget
RUN apt-get install -y wget
# ssh
RUN apt-get install -y ssh
#jdk1.7
RUN mkdir /usr/local/soft
WORKDIR /usr/local/soft
RUN wget -c -q --no-check-certificate --no-cookies --header "Cookie: oraclelicense=accept-securebackup-cookie" http://download.oracle.com/otn-pub/java/jdk/7u79-b15/jdk-7u79-linux-x64.tar.gz
RUN tar -zxf jdk-7u79-linux-x64.tar.gz
RUN ln -s jdk-7u79-linux-x64 jdk
ENV JAVA_HOME /usr/local/soft/jdk
ENV CLASSPATH .:$JAVA_HOME/lib:$JAVA_HOME/jre/lib
ENV PATH $PATH:$JAVA_HOME/bin
# dsafasf
CMD echo hello hnngm!
