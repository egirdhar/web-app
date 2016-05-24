#
# Cookbook Name:: web-app
# Recipe:: default
#
# Copyright (C) 2016 YOUR_NAME
#
# All rights reserved - Do Not Redistribute

#
#
# assuming the ubuntu platform and install nginx service
package 'nginx' do
  action :install
end

# custom nginx config
template '/etc/nginx/sites-available/app' do 
source 'nginx-app.erb'
mode '0755'
end 
#
# create link
link '/etc/nginx/sites-enabled/app' do 
 to '/etc/nginx/sites-available/app'
end 

# enable and start
service 'nginx' do
  action [ :enable, :start ]
end

