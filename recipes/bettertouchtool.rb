remote_file "#{Chef::Config[:file_cache_path]}/BetterTouchTool.zip" do
  source "http://www.boastr.de/BetterTouchTool.zip"
  owner WS_USER
  action :create_if_missing
end

execute "unzip BetterTouchTool to /Applications" do
  command "unzip -o #{Chef::Config[:file_cache_path]}/BetterTouchTool.zip -x __MACOSX* -d /Applications/"
  user WS_USER
  group "admin"
end

template "#{WS_HOME}/Library/Prefrences/com.hegenberg.BetterTouchTool.plist" do
  source "com.hegenberg.BetterTouchTool.plist"
  owner WS_USER
end
