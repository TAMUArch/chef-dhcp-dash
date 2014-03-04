#
# Cookbook Name:: dhcp-dash
# Recipe:: default
#
# Copyright (C) 2014 YOUR_NAME
# 
# All rights reserved - Do Not Redistribute
#

include_recipe 'git'
include_recipe 'rbenv'
include_recipe 'rbenv::ruby_build'
include_recipe 'rbenv::rbenv_vars'

rbenv_ruby '2.1.0'

rbenv_gem 'bundler' do
  ruby_version '2.1.0'
end

git '/opt/dhcp-dash' do
  repository 'git://github.com/TAMUArch/dhcp-dash.git'
  reference 'master'
  action :sync
end

rbenv_execute 'bundle install' do
  ruby_version '2.1.0'
  cwd '/opt/dhcp-dash'
end
