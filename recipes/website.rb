#
# Cookbook Name:: hebrides
# Recipe:: website
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

require 'time'

template '/var/www/html/index.html' do
  source 'index.html.erb'
  owner  'apache'
  group  'apache'
  mode   '0755'
  variables(
    :now => Time.now.utc.iso8601
  )
end
