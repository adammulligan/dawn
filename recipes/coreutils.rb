include_recipe "dawn::homebrew"

if node["platform"] != "mac_os_x"
  package "coreutils"
else
  brew_install "coreutils"
end
