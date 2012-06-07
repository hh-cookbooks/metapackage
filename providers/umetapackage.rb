action :create do
  package 'equivs'
  template "#{node.metapackage.output_dir}/#{nr.name}" do
    source 'equiv.erb'
    variables(
      :name => nr.name,
      :depends => nr.depends
    )
  end
  execute "equivs-build #{nr.name}" do
    cwd node.metapackage.output_dir
  end
end

def nr # meta package
  @new_resource
end
