# Base on latest CentOS image
FROM centos:latest

MAINTAINER “Jonathan Ervine” <jon.ervine@gmail.com>
ENV container docker

# Install updates
RUN yum install -y http://mirror.pnl.gov/epel/7/x86_64/e/epel-release-7-5.noarch.rpm
RUN yum install -y openvpn
RUN yum install -y http://swupdate.openvpn.org/as/openvpn-as-2.0.13-CentOS7.x86_64.rpm
RUN yum update -y
RUN yum clean all

