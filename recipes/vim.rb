include_recipe "dawn::tmux"

git node["vim_home"] do
  repository node["vim_config_git"]
  branch "master"
  revision "HEAD"
  user WS_USER
end

%w{_temp _backup}.each do |dir|
  directory "#{node["vim_home"]}/#{dir}" do
    owner WS_USER
    action :create
  end
end

link "#{WS_HOME}/.vimrc" do
  to "#{node["vim_home"]}/vimrc"
  owner WS_USER
  not_if { File.symlink?("#{node["vim_home"]}/vimrc") }
end

file "#{WS_HOME}/.vimrc.local" do
  action :touch
  owner WS_USER
  not_if { File.exists?("#{WS_HOME}/.vimrc.local") }
end
