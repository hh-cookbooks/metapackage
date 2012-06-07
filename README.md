Description
===========

Creates metapackages (empty .deb/.rpm etc)

Requirements
============

Ubuntu for now

Attributes
==========

default['metapackage']['output_dir'] = '/tmp'

Usage
=====

include_recipe 'metapackage'

metapackage 'jeddy' do
  depends ['jed', 'jed-extra']
end

It outputs a jeddy_*deb in /tmp that can be added to a personal repo.


