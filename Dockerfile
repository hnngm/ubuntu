#ubuntu-jdk1.7
CMD echo 基于 ubuntu:14.04  构建
FROM ubuntu:14.04
#  作者 hnngm@163.com
CMD echo 作者 hnngm@163.com
MAINTAINER hnngm@163.com
#  替换ubuntu源文件 sources.list
CMD echo 替换ubuntu源文件 sources.list
ADD sources.list /etc/apt/
#  更新
CMD echo 更新
RUN apt-get update
#  安装vim编辑器
CMD echo 安装vim编辑器
RUN apt-get install -y vim
# 安装wget下载工具
CMD echo 安装wget下载工具
RUN apt-get install -y wget
# 安装ssh服务
CMD echo 安装ssh服务
RUN apt-get install -y ssh
#安装jdk1.7
CMD echo 安装jdk1.7
CMD echo 创建  /usr/local/soft目录
RUN mkdir  /usr/local/soft
CMD echo 进入 /usr/local/soft目录
WORKDIR /usr/local/soft
CMD echo 开始下载jdk1.7...请稍等
RUN wget -c -q -O jdk1.7.tar.gz --no-check-certificate --no-cookies --header "Cookie: oraclelicense=accept-securebackup-cookie" http://download.oracle.com/otn-pub/java/jdk/7u79-b15/jdk-7u79-linux-x64.tar.gz
CMD echo 下载完成
CMD echo 开始解压jdk1.7
RUN mkdir ./jdk1.7
RUN tar -zxf jdk1.7.tar.gz -C ./jdk1.7 --strip-components 1
CMD echo 解压完成
CMD echo 为jdk1.7创建快捷方式
RUN ln -s jdk1.7 jdk
CMD echo 设置java 环境变量
ENV JAVA_HOME /usr/local/soft/jdk
ENV CLASSPATH .:$JAVA_HOME/lib:$JAVA_HOME/jre/lib
ENV PATH $PATH:$JAVA_HOME/bin
CMD echo 恭喜你，构建完成！！！
