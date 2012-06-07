#
# Cookbook Name:: metapackage
# Recipe:: default
#
# Copyright 2012, Chris McClimans
#

metapackage 'jeddy' do
  depends ['jed', 'jed-extra']
end
