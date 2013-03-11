include_recipe "pivotal_workstation::homebrew"

if node["platform"] != "mac_os_x"
  remote_file "#{Chef::Config[:file_cache_path]}/redis.tar.gz" do
    source "http://redis.googlecode.com/files/redis-2.6.10.tar.gz"
    owner WS_USER
    action :create_if_missing
  end

  execute "untar redis" do
    command "tar xvf #{Chef::Config[:file_cache_path]}/redis.tar.gz -C #{Chef::Config[:file_cache_path]}/"
    user 'root'
  end

  bash "build node" do
    user 'root'
    cwd "#{Chef::Config[:file_cache_path]}/redis-2.6.10"
    code <<-EOH
      make
      make install
    EOH
  end
else
  brew_install "redis"
end
