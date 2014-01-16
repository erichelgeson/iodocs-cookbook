include_recipe "nodejs"
npm_package "iodocs"

# Redis cookbook is out of date, use PPA instead
apt_repository 'redis-server' do
  uri 'http://ppa.launchpad.net/chris-lea/redis-server/ubuntu'
  distribution node['lsb']['codename']
  components ['main']
  keyserver 'keyserver.ubuntu.com'
  key 'C7917B12'
  action :add
end
package 'redis-server'

# Default config for iodocs
template "#{node['node_modules_dir']}/iodocs/config.json" do
  source "config.json.erb"
  mode 0655
end

# simple init.d for iodocs
template "/etc/init.d/iodocs" do
  source "iodocs_initd.erb"
  mode 0655
end

service "iodocs" do
  supports :status => true, :start => true, :stop => true, :restart => true
  action [ :enable, :start ]
end
