remote_file "#{Chef::Config[:file_cache_path]}/nginx.tar.gz" do
  source "http://nginx.org/download/nginx-1.2.7.tar.gz"
  owner WS_USER
  action :create_if_missing
end

execute "untar nginx" do
  command "tar xvf #{Chef::Config[:file_cache_path]}/nginx.tar.gz -C #{Chef::Config[:file_cache_path]}/"
  user 'root'
end

bash "build nginx" do
  user 'root'
  cwd "#{Chef::Config[:file_cache_path]}/nginx-1.2.7"
  code <<-EOH
    ./configure
    make
    make install
  EOH
end
