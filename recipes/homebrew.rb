return unless node["platform"] == "mac_os_x"

include_recipe "dawn::user_owns_usr_local"

homebrew_git_revision_hash  = version_string_for("homebrew")

directory Chef::Config[:file_cache_path] do
  action :create
  recursive true
  mode "0775"
  owner "root"
  group "staff"
end

git "#{Chef::Config[:file_cache_path]}/homebrew" do
  repository "https://github.com/mxcl/homebrew.git"
  revision homebrew_git_revision_hash
  destination "#{Chef::Config[:file_cache_path]}/homebrew"
  action :sync
end

execute "Copying homebrew's .git to /usr/local" do
  command "rsync -axSH #{Chef::Config[:file_cache_path]}/homebrew/ /usr/local/"
  user WS_USER
end

ruby_block "Check that homebrew is running & working" do
  block do
    `brew --version`
    if $? != 0
      raise "Couldn't find brew"
    end
  end
end

directory "/usr/local/sbin" do
  owner WS_USER
end

directory "/Users/#{WS_USER}/Applications" do
  owner WS_USER
end
