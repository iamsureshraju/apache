#
# Cookbook Name:: apache
# Recipe:: server
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

package 'apache2'

file '/srv/www/htdocs/index.html' do
  content '<h1>Hello, Chef!</h1>'
end

service 'apache2' do
  action [ :enable, :start ]
end
