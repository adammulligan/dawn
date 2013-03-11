remote_file "#{Chef::Config[:file_cache_path]}/imageoptim.tbz2" do
  source "http://imageoptim.com/ImageOptim.tbz2"
  owner WS_USER
end

execute "untar imageoptim" do
  command "tar zxvf #{Chef::Config[:file_cache_path]}/imageoptim.tbz2 -C #{Chef::Config[:file_cache_path]}/"
  user WS_USER
end

execute "Install imageoptim" do
  command "cp -R #{Chef::Config[:file_cache_path]}/ImageOptim.app /Applications"
  user WS_USER
end
