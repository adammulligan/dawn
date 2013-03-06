if node["platform"] == "mac_os_x"
  links = {
    "#{WS_HOME}/inbox" => "#{WS_HOME}/Downloads"
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
