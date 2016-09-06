#
# Cookbook Name:: hebrides
# Recipe:: website
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

require 'time'
require 'json'

app = search(:aws_opsworks_app).first
log(app.to_json)

template '/var/www/html/index.html' do
  source 'index.html.erb'
  owner  'apache'
  group  'apache'
  mode   '0755'
  variables(
    now: Time.now.utc.iso8601,
    victor: app['victor'],
    year: app['year']
  )
end
