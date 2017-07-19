#MongoDB
##########################################################################
# Cookbook Name:: mongodb
# Recipe:: install
#
#
case node [:platform_family]
when 'rhel'
      file 'etc/yum.repos.d/mongodb-org-3.4.repo' do
          content'
[mongodb-org-3.4]
name=MongoDB Repository
baseurl=https://repo.mongodb.org/yum/redhat/$releasever/mongodb-org/3.4/x86_64/
gpgcheck=1
enabled=1
gpgkey=https://www.mongodb.org/static/pgp/server-3.4.asc'
end

#method2
#mongo_repo = "/etc/yum.repos.d/mongodb-org-3.4.repo"
#File.open("/etc/yum.repos.d/mongodb-org-3.4.repo", a+)
#include [cookbook::recipe] #repos file

package "mongodb" do
  action :install
end

service "mongodb" do
  action [ :enable, :start]
end
