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
#jdk1.7
RUN mkdir /usr/local/soft
RUN cd /usr/local/soft
RUN wget -c --no-check-certificate --no-cookies --header "Cookie: oraclelicense=accept-securebackup-cookie" http://download.oracle.com/otn-pub/java/jdk/7u79-b15/jdk-7u79-linux-x64.tar.gz | tar -zx
# dsafasf
CMD echo hello hnngm!
