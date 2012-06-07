Description
===========

Creates metapackages (empty .deb/.rpm etc)

* https://help.ubuntu.com/community/MetaPackages#Creating_Metapackages

Requirements
============

Ubuntu for now

Attributes
==========

default['metapackage']['output_dir'] = '/tmp'

Usage
=====

```ruby

include_recipe 'metapackage'

metapackage 'jeddy' do
  depends ['jed', 'jed-extra']
end
```

It outputs a jeddy_*deb in /tmp that can be added to a personal repo.

When this metapackage is removed, it will gracefully remove it's dependencies.


