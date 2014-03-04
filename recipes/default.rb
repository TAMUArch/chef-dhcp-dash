#
# Cookbook Name:: chef-dhcp-dash
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

rbenv_ruby '1.9.3-p194'

rbenv_gem 'bundler' do
  ruby_version '1.9.3-p194'
end
