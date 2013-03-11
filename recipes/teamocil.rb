gem_package('teamocil')

directory "#{WS_HOME}/.teamocil" do
  mode "0755"
  owner WS_USER
  action :create
end

template "#{WS_HOME}/.teamocil/dev.yml" do
  source "dev.yml"
  owner WS_USER
end
