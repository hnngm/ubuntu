#ubuntu
FROM ubuntu:14.04
#
MAINTAINER hnngm
#
ADD https://github.com/hnngm/docker/tree/master/ubuntu/sources.list /etc/apt/
#
RUN apt-get update
#
RUN apt-get install -y vim
#
CMD echo hello hnngm!
