#MongoDB
##########################################################################
# Cookbook Name:: mongodb
# Recipe:: install
#
#create mongo.repo and write file
mongo_file = File.new("/etc/yum.repos.d/mongodb-org-3.4.repo", "w+")

File.open("mongo_file", "w+") do |file|
      mongo_file.write("
[mongodb-org-3.4]
name=MongoDB Repository
baseurl=https://repo.mongodb.org/yum/redhat/$releasever/mongodb-org/3.4/x86_64/
gpgcheck=1
enabled=1
gpgkey=https://www.mongodb.org/static/pgp/server-3.4.asc'
")
end

#install MongoDB
package "mongodb-org" do
       action :install
end

#start MongoDB including on reboot
service "mongod" do
  action [:enable, :start]  
end


#extra-notes
#case node [:platform_family]
#when 'rhel'
