include_recipe "dawn::homebrew"

if node["platform"] == "mac_os_x"
  brew_install "zsh"
end

puts `chsh -s /bin/zsh`
