#
# Cookbook:: audit-wrapper
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.
include_recipe 'audit::default'
case node['os']
when 'linux'
  node.default['audit']['profiles'] = [ {'name' => 'cis-ubuntu16.04lts-level1-server', 'compliance' => 'admin/cis-ubuntu16.04lts-level1-server' } ]
when 'windows'
  node.default['audit']['profiles'] = [ {'name' => 'cis-windows2016rtm-release1607-level1-memberserver', 'compliance' => 'admin/cis-windows2016rtm-release1607-level1-memberserver' } ]
end
