#
# Cookbook:: mongod
# Recipe:: default
#
# Copyright:: 2020, The Authors, All Rights Reserved.
#node['mongodb']['4.03']
#include_recipe 'sc-mongodb'

include_recipe 'apt'
include_recipe 'nodejs'
#include_recipe 'poise-python'
include_recipe  'yum'
#[mongodb]['package_version'] = 4.0.3
# mongodb_instance 'mongodb' do
#   package_version  node['mongodb']['package_version'] == '4.0.3'
# end
service 'mongod' do
  action :start
end
service 'mongod' do
  action :enable
end
