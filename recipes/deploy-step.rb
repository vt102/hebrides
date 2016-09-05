#
# Cookbook Name:: hebrides
# Recipe:: deploy-step
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

require 'time'

t = Time.now.iso8601         

file "/tmp/deploy-#{t}"

