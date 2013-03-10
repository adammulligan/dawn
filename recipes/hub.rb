include_recipe "dawn::homebrew"

if node["platform"] != "mac_os_x"
  remote_file "#{WS_HOME}/bin/hub" do
    source "http://defunkt.io/hub/standalone"
    owner WS_USER
    mode "0744"
  end
else
  brew_install "hub"
end
