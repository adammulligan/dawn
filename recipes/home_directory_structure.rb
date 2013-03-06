if node["platform"] == "mac_os_x"
  links = {
    "#{WS_HOME}/inbox" => "#{WS_HOME}/Downloads",
    "#{WS_HOME}/inbox/_screenshots" => "#{WS_HOME}/cloud/Google Drive/Sync/_screenshots",
    "#{WS_HOME}/pics"  => "#{WS_HOME}/Pictures",
    "#{WS_HOME}/docs"  => "#{WS_HOME}/Documents",
    "#{WS_HOME}/src"  => "#{WS_HOME}/cloud/Dropbox/src",
  }

  links.each do |f, t|
    link f do
      to t
    end
  end
end

new_directories = [
  "#{WS_HOME}/bin",
  "#{WS_HOME}/tmp"
]

if node["platform"] == "mac_os_x"
  new_directories.concat([
    "#{WS_HOME}/cloud"
  ])
else
  new_directories.concat([
    "#{WS_HOME}/inbox"
  ])
end

new_directories.each do |dir|
  directory dir do
    owner WS_USER
    mode 0755
    action :create
    recursive true
  end
end
