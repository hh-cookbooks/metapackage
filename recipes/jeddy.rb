#
# Cookbook Name:: metapackage
# Recipe:: default
#
# Copyright 2012, Chris McClimans
#


# could be fed via json/yaml... this was just to test

metapackage 'jeddy' do
  depends ['jed', 'jed-extra']
end
