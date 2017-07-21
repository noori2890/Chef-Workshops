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

f = open('sample.flv')
begin
    http.request_get('/sample.flv') do |resp|
        resp.read_body do |segment|
            f.write(segment)
        end
    end
ensure
    f.close()
end



#extract and istall of tomcat from binary 
#execute "cd /opt/"
#execute "wget http://apache.claz.org/tomcat/tomcat-8/v8.5.16/bin/apache-tomcat-8.5.16.tar.gz"
#execute "tar -xvf apache-tomcat-8.5.16.tar.gzi"

#startup tomcat
#execute "cd /opt/apache-tomcat-8.5.16/bin"
#execute "./startup.sh"


#extract/install of tomcat
#template "/chef-repo/.chef/cookbooks/apachetomcat/templates/exintomcat.erb" do
#  source "exintomcat.erb"
#  source "template for startup
