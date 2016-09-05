#
# Cookbook Name:: hebrides
# Recipe:: configure-step
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

require 'time'

t = Time.now.iso8601

file "/tmp/configure-#{t}"
