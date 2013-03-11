include_recipe "dawn::homebrew"

if node["platform"] != "mac_os_x"
  package "ack"
else
  brew_install "ack"
end
