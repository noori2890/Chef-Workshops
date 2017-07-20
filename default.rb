#
#Cookbook Name::apachetomcat
#Recipe::default
#
#Copyright (c) 2017 The Authors, All Rights Reserved.
#
#check for centos case node [:platform]
#when "centos"

#ensure java is installed
package 'java-1.6.0-openjdk' do
  action:install
end

#extract/install of tomcat
template "/chef-repo/.chef/cookbooks/apachetomcat/templates/exintomcat.erb" do
  source "exintomcat.erb"
#  source "template for startup
