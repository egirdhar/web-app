#
# Cookbook Name:: web-app
# Recipe:: default
#
# Copyright (C) 2016 YOUR_NAME
#
# All rights reserved - Do Not Redistribute

#
#
app_path=node['web-app']['directory']
chef_path="/opt/chef/embedded/bin"

directory "#{app_path}" do 
 mode '0755'
 recursive true
 action :create
end

%w{sinatra puma}.each do |p|
 gem_package "#{p}" do
  gem_binary "#{chef_path}/gem"
  action :install
 end
end

cookbook_file "#{app_path}/app.rb" do
  source 'app.rb'
  mode '0755'
  action :create_if_missing
end

execute 'run app' do 
   command "#{chef_path}/ruby #{app_path}/app.rb > #{app_path}/web_app.log 2>&1 &"
end 
