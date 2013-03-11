directory "#{WS_HOME}/.ssh" do
  action :create
  owner WS_USER
  group "staff"
  mode "0700"
end

execute "create SSH key pair for user" do
  command "ssh-keygen -N '' -f #{WS_HOME}/.ssh/id_rsa"
  user WS_USER
  not_if "test -e #{WS_HOME}/.ssh/id_rsa"
end
