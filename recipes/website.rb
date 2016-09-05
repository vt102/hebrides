#
# Cookbook Name:: hebrides
# Recipe:: website
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

template '/var/www/html/index.html' do
  source 'index.html.erb'
  owner  'apache'
  group  'apache'
  mode   '0755'
end
