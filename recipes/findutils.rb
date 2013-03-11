include_recipe "dawn::homebrew"

if node["platform"] != "mac_os_x"
  package "findutils"
else
  brew_install "findutils"
end
