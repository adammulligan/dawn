include_recipe "pivotal_workstation::zsh"

execute "oh my zsh install" do
  command "curl -L https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh | sh"
  user WS_USER
  not_if { File.exist?("#{WS_HOME}/.oh-my-zsh") }
end

%w{aliases functions}.each do |file|
  template "#{node["oh-my-zsh_custom_dir"]}/#{file}.zsh" do
    source "#{file}.zsh"
    owner WS_USER
  end
end

template "#{WS_HOME}/.zshrc" do
  source "zshrc"
  owner WS_USER
end
