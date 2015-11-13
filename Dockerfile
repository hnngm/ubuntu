#ubuntu
FROM ubuntu:14.04
#
MAINTAINER hnngm
#
ADD https://github.com/hnngm/ubuntu/sources.list /etc/apt/
#
RUN apt-get update
#
RUN apt-get install -y vim
#
CMD echo hello hnngm!
