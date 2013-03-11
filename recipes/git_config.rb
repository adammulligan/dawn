include_recipe "dawn::git"

template "#{WS_HOME}/.gitignore_global" do
  source "gitignore_global"
  owner WS_USER
end

template "#{WS_HOME}/.gitconfig" do
  source "gitconfig"
  owner WS_USER
end
