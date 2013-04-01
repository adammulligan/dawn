include_recipe "dawn::tmux"

git node["vim_home"] do
  repository node["vim_config_git"]
  branch "master"
  revision "HEAD"
  user WS_USER
end
