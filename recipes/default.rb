#
# Cookbook Name:: npm
# Recipe:: default
#
# Copyright (C) 2013 YOUR_NAME
# 
# All rights reserved - Do Not Redistribute
#

if node[:npm][:packages]
	node[:npm][:packages].each do |pkg|
		pkg_name = pkg["name"] ? pkg["name"] : pkg
		pkg_action = pkg["action"] ? pkg["action"] : 'install'

		npm_package pkg_name do
			version pkg["version"] if pkg["version"]
			action action.to_sym
        end
	end
end