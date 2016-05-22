FROM centos:centos7

MAINTAINER "Girdhar Katiyar" <egirdhar@gmail.com>

# Timestamps are always useful
RUN date > /root/date

# Install required packages
RUN yum install -y git \
                   libffi-devel \
                   openssl \
                   openssl-devel \
                   pyOpenSSL \
                   tar \
                   unzip \
                   wget \
	           openssh-server \
	           openssh-clients \
		   sudo \
                   gcc \
                   ruby-devel \
	           which	

WORKDIR /tmp
RUN git config --global user.email "egirdhar@gmail.com"
RUN git config --global user.name "egirdhar"

# Install Chef and create an empty cookbooks repository
WORKDIR /tmp
RUN curl -L https://www.opscode.com/chef/install.sh | bash -s -- -v 12.0
WORKDIR /root
RUN wget http://github.com/opscode/chef-repo/tarball/master
RUN tar -zxvf master
RUN mv chef-chef-repo* chef-repo
RUN rm -rf master
WORKDIR /root/chef-repo
RUN git init && git add . && git commit -m 'Initial commit'
RUN mkdir .chef
RUN echo "cookbook_path [ '/root/chef-repo/cookbooks' ]" > .chef/knife.rb

# Mount static html volume
VOLUME ["/var/www/html"]

# Expose ports needed to access this container
# HTTP NON-SSL port
EXPOSE 80
# HTTP SSL port
EXPOSE 443
# web-app port 
EXPOSE 4567

 # Setup kitchen user with passwordless sudo 
RUN  useradd -d /home/kitchen -m -s /bin/bash kitchen && \ 
  (echo kitchen:kitchen | chpasswd) && \ 
  mkdir -p /etc/sudoers.d && \ 
  echo 'kitchen ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers.d/kitchen && \
  # Setup SSH daemon so test-kitchen can access the container 
  ssh-keygen -t dsa -f /etc/ssh/ssh_host_dsa_key -N '' && \ 
  ssh-keygen -t rsa -f /etc/ssh/ssh_host_rsa_key -N '' && \ 
  echo 'OPTIONS="-o UseDNS=no -o UsePAM=no -o PasswordAuthentication=yes"' >> /etc/sysconfig/sshd  
 


# Init the server and start service manager, all initial services
CMD ["/sbin/init"]
