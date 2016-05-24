
FROM        ubuntu:14.04
MAINTAINER "Girdhar Katiyar" <egirdhar@gmail.com>

# Timestamps are always useful
RUN date > /root/date

RUN dpkg-divert --local --rename --add /sbin/initctl
RUN ln -sf /bin/true /sbin/initctl

ENV DEBIAN_FRONTEND noninteractive

# required packages
RUN apt-get update
RUN apt-get install -y sudo openssh-server curl lsb-release ruby-dev gcc make git

RUN useradd -d /home/kitchen -m -s /bin/bash kitchen
RUN echo kitchen:kitchen | chpasswd
RUN echo 'kitchen ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers

WORKDIR /tmp
RUN git config --global user.email "egirdhar@gmail.com"
RUN git config --global user.name "egirdhar"

expose 80
# for web app
expose 8080

# chef-client installation
RUN curl -L https://www.opscode.com/chef/install.sh | bash
