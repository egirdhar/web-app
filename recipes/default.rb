#
# Cookbook Name:: web-app
# Recipe:: default
#
# Copyright (C) 2016 YOUR_NAME
#
# All rights reserved - Do Not Redistribute

#
#
#

# app directory 
app_path=node['web-app']['directory']
chef_path="/opt/chef/embedded/bin"

directory "#{app_path}" do 
 mode '0755'
 recursive true
 action :create
end

# required gems 
%w{sinatra puma}.each do |p|
 gem_package "#{p}" do
  gem_binary "#{chef_path}/gem"
  action :install
 end
end

# sinatra conf 
cookbook_file "#{app_path}/app.rb" do
  source 'app.rb'
  mode '0755'
  action :create_if_missing
end

# run the app at port 80
execute 'run app' do 
   command "#{chef_path}/ruby #{app_path}/app.rb -p 80 > #{app_path}/web_app.log 2>&1 &"
end 
