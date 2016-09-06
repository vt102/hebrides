#
# Cookbook Name:: hebrides
# Recipe:: website
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

require 'time'
require 'json'

app = search(:aws_opsworks_app).first
log(app.to_json)
log(node.to_json)
log("appid:  #{app['app_id']}")
log("url:    #{app['app_source']['url']}")
log("victor: #{node['victor']}")
log("year:   #{node['year']")

template '/var/www/html/index.html' do
  source 'index.html.erb'
  owner  'apache'
  group  'apache'
  mode   '0755'
  variables(
    now: Time.now.utc.iso8601,
    appid: app['app_id'],
    url: app['app_source']['url'],
    victor: node['victor'],
    year: node['year']
  )
end
