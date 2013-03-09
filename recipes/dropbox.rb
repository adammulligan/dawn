if node["platform"] != "mac_os_x"
  remote_file "#{Chef::Config[:file_cache_path]}/dropbox.tar.gz" do
    source "https://www.dropbox.com/download?plat=lnx.x86_64"
    owner WS_USER
  end

  execute "extract tomcat-connectors" do
    command "tar vxzf #{Chef::Config[:file_cache_path]}/dropbox.tar.gz -C #{Chef::Config[:file_cache_path]}/"
    user WS_USER
  end

  remote_file "#{Chef::Config[:file_cache_path]}/.dropbox-dist" do
    source "#{Chef::Config[:file_cache_path]}/.dropbox-dist"
    owner WS_USER
  end
else
  dmg_package "Dropbox" do
    volumes_dir "Dropbox Installer"
    source "https://www.dropbox.com/download?plat=mac"
    action :install
    owner WS_USER
  end
end
