#
# Cookbook Name:: hebrides
# Recipe:: deploy-step
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

require 'json'
require 'time'

t = Time.now.iso8601
file "/tmp/deploy-#{t}"

File.open('/tmp/app.json', 'w') { |f|
  f.write(search(:aws_opsworks_app).first.to_json)
}

File.open('/tmp/deploy.json', 'w') { |f|
  f.write(search(:aws_opsworks_deploy).first.to_json)
}

