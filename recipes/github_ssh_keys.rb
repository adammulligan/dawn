directory "#{WS_HOME}/.ssh" do
  action :create
  owner WS_USER
  group "staff"
  mode "0700"
end

file "#{WS_HOME}/.ssh/known_hosts" do
  action :create_if_missing
  owner WS_USER
  group "staff"
  mode "0644"
end

execute "add github to knownhosts" do
  user WS_USER
  cwd "#{WS_HOME}/.ssh"
  command <<-SH
    (cat known_hosts | grep github.com) || \
    echo "github.com,207.97.227.239 ssh-rsa AAAAB3NzaC1yc2EAAAABIwAAAQEAq2A7hRGmdnm9tUDbO9IDSwBK6TbQa+PXYPCPy6rbTrTtw7PHkccKrpp0yVhp5HdEIcKr6pLlVDBfOLX9QUsyCOV0wzfjIJNlGEYsdlLJizHhbn2mUjvSAHQqZETYP81eFzLQNnPHt4EVVUh7VfDESU84KezmD5QlWpXLmvU31/yMf+Se8xhHTvKSCZIFImWwoG6mbUoWf9nzpIoaSjB+weqqUUmpaaasXVal72J+UX2B+2RPW3RcT0eOzQgqlJL3RKrTJvdsjE3JEAvGq3lGHSZXy28G3skua2SmVi/w4yCE6gbODqnTWlg7+wC604ydGXA8VJiS5ap43JXiUFFAaQ==" >> known_hosts
  SH
end

execute "make sure .ssh/config is owned by the user" do
  command "chown #{WS_USER} #{WS_HOME}/.ssh/config"
  only_if "test -e #{WS_HOME}/.ssh/config"
end

execute "create SSH key pair for Github" do
  command "ssh-keygen -N '' -f #{WS_HOME}/.ssh/id_github"
  user WS_USER
  not_if "test -e #{WS_HOME}/.ssh/id_github"
end

execute "add Github configuration to .ssh/config" do
  config = "\n\nHost github.com\n  User git\n  IdentityFile #{WS_HOME}/.ssh/id_github"
  command "echo '#{config}' >> #{WS_HOME}/.ssh/config"
  not_if "grep 'id_github' #{WS_HOME}/.ssh/config"
  user WS_USER
end
