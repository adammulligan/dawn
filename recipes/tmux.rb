include_recipe "dawn::homebrew"

if node["platform"] != "mac_os_x"
  package "tmux"
else
  brew_install "tmux"
end

template "#{WS_HOME}/.tmux.conf" do
  source "tmux.conf"
  owner WS_USER
end
