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
apt_repository 'mongodb' do
  uri 'http://repo.mongodb.org/apt/ubuntu/dists/xenial/mongodb-org/3.2/'
  components ['main']
  distribution 'xenial'
  key '24F3C978'
  key_server 'hkp://keyserver.ubuntu.com:80'
  action :add
  deb_src true

end
apt_package 'mongodb-org' do
  action :install
end
service 'mongod' do
  action :start
end
service 'mongod' do
  action :enable
end
