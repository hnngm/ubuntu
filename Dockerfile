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
RUN wget -c -q -P=/usr/local/soft --no-check-certificate --no-cookies --header "Cookie: oraclelicense=accept-securebackup-cookie" http://download.oracle.com/otn-pub/java/jdk/7u79-b15/jdk-7u79-linux-x64.tar.gz
RUN tar -zx /usr/local/soft/jdk-7u79-linux-x64.tar.gz
RUN ln -s /usr/local/soft/jdk-7u79-linux-x64 /usr/local/soft/jdk
RUN "export JAVA_HOME=/usr/local/soft/jdk" >> /etc/profile
RUN "export CLASSPATH=.:$JAVA_HOME/lib:$JAVA_HOME/jre/lib" >> /etc/profile
# dsafasf
CMD echo hello hnngm!
