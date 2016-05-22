
include_recipe 'nginx::default'

node.set["nginx"]["default_site_enabled"] = false


template '/etc/init.d/nginx' do
   source "nginx-init.erb"
   mode   "0644"
end


nginx_site "default" do
  enable false
end

#nginx_site "wordpress" do
#  enable true
#end

service "nginx" do
  supports :status => true, :restart => true, :reload => true
  action [ :reload ]
end
