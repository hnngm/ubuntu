#ubuntu
FROM ubuntu:14.04
#  dfasfasf
MAINTAINER hnngm
#  dsafasf
ADD github.com/hnngm/ubuntu/sources.list /etc/apt/
#  dsafas
RUN apt-get update
#  dasfasdf
RUN apt-get install -y vim
# dsafasf
CMD echo hello hnngm!
