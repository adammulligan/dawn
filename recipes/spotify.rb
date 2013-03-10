remote_file "#{Chef::Config[:file_cache_path]}/spotify.zip" do
  source "http://download.spotify.com/SpotifyInstaller.zip"
  owner WS_USER
end

execute "unzip spotify" do
  command "unzip #{Chef::Config[:file_cache_path]}/spotify.zip -d #{Chef::Config[:file_cache_path]}/"
  user WS_USER
end

execute "Install spotify" do
  command "open \"#{Chef::Config[:file_cache_path]}/Install Spotify.app\""
  user WS_USER
end
