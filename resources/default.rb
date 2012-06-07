actions :create

attribute :name, :name_attribute => true, :kind_of => String
attribute :depends, :kind_of => Array
# attribute :desc, :kind_of => String

def initialize(name, run_context=nil)
  super
  set_platform_default_providers
  @action = :create
end

private
def set_platform_default_providers
  [
    [:ubuntu, :metapackage, Chef::Provider::MetapackageUmetapackage]
  ].each do |plat,res,prov|
    Chef::Platform.set(
      :platform => plat,
      :resource => res,
      :provider => prov
      )
  end
end
