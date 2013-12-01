#
# Cookbook Name:: npm
# Resource:: package
#
# Copyright (C) 2013 YOUR_NAME
#
# All rights reserved - Do Not Redistribute
#

actions :install, :install_local, :install_from_json, :uninstall, :uninstall_local

attribute :name, :name_attribute => true
attribute :version, :default => nil
attribute :path, :default => nil

def initialize(*args)
	super
	@action = :install
end