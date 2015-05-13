# Base on latest CentOS image
FROM centos:latest

MAINTAINER “Jonathan Ervine” <jon.ervine@gmail.com>
ENV container docker

# Install updates
RUN yum install -y http://mirror.pnl.gov/epel/7/x86_64/e/epel-release-7-5.noarch.rpm
RUN yum install -y openvpn easy-rsa
RUN yum update -y
RUN yum clean all

VOLUME /etc/openvpn

EXPOSE 1194 1195
ENTRYPOINT ["/bin/bash"]
