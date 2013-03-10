include_recipe "dawn::homebrew"

hostname = File.read('templates/default/hostname').gsub("\n", '')
hostname = "Steve" if hostname.length == 0

if node["platform"] != "mac_os_x"
  execute "Set hostname for this session" do
    command "hostname \"#{hostname}\""
    user WS_USER
  end

  template "/etc/hostname" do
    owner 'root'
    source "hostname"
  end
else
  %w{ComputerName HostName LocalHostName}.each do |name|
    execute "Set hostname" do
      command "sudo scutil --set #{name} \"#{hostname}\""
      user WS_USER
    end
  end
end
