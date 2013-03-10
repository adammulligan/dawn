remote_file "#{Chef::Config[:file_cache_path]}/alfred.zip" do
  source "http://cachefly.alfredapp.com/alfred_1.3.3_267.zip"
  owner WS_USER
end

execute "unzip alfred" do
  command "unzip #{Chef::Config[:file_cache_path]}/alfred.zip -d #{Chef::Config[:file_cache_path]}/"
  user WS_USER
end

execute "Install spotify" do
  command "cp -R #{Chef::Config[:file_cache_path]}/Alfred.app /Applications"
  user WS_USER
end
