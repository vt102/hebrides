#
# Cookbook Name:: hebrides
# Recipe:: deploy-step
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

require 'json'
require 'time'

t = Time.now.iso8601
file "/tmp/deploy-#{t}"

bags = [ "app", "command", "ecs_cluster", "elastic_load_balancer",
         "instance", "layer", "rds_db_instance", "stack", "user" ]

bags.each { |bag|
  File.open("/tmp/#{bag}.json", 'w') { |f|
    f.write(search(:"aws_opsworks_#{bag}").first.to_json)
  }
}

File.open("/tmp/node.json", 'w') { |f|
  f.write(node.to_json)
}
