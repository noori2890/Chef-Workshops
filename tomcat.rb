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

#ensure wget is installed
package "wget" do
    action :install
end

#check if apache file exists if not unload tar file from binary
if File.exist?("/apache-tomcat-8.5.16")
    puts "File EXISTS"
else
  execute "wget http://apache.claz.org/tomcat/tomcat-8/v8.5.16/bin/apache-tomcat-8.5.16.tar.gz"
  execute "tar -xvf apache-tomcat-8.5.16.tar.gz"
end

service "tomcat" do
    action :start
end

