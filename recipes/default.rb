#
# Cookbook Name:: maquinet-web-server
# Recipe:: default
#
# Copyright (C) 2013 YOUR_NAME
# 
# All rights reserved - Do Not Redistribute
#
template "nginx.conf" do 
	path "#{node['nginx']['dir']}/nginx.conf"
	source 'nginx.conf.erb'
	owner  'root'
	group  'root'
	mode   '0644'
	notifies :reload, 'service[nginx]'
end