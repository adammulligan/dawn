include_recipe "dawn::homebrew"

if node["platform"] != "mac_os_x"
  remote_file "#{Chef::Config[:file_cache_path]}/node.tar.gz" do
    source "http://nodejs.org/dist/v0.8.22/node-v0.8.22.tar.gz"
    owner WS_USER
    action :create_if_missing
  end

  execute "untar node" do
    command "tar xvf #{Chef::Config[:file_cache_path]}/node.tar.gz -C #{Chef::Config[:file_cache_path]}/"
    user WS_USER
    group "admin"
  end

  bash "build node" do
    user WS_USER
    cwd "#{Chef::Config[:file_cache_path]}/node-v0.8.22"
    code <<=EOH
      ./configure
      make
      make install
    EOH
  end
else
  brew "node"
end
