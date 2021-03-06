include_recipe "dawn::homebrew"

if node["platform"] != "mac_os_x"
  package "libpq-dev"

  bash "Install postgres" do
    user 'root'
    cwd "/"
    code <<-EOH
      sudo add-apt-repository ppa:pitti/postgresql
      sudo apt-get update
    EOH
  end

  package "postgresql-9.2"
else
  # blow away default image's data directory
  directory "/usr/local/var/postgres" do
    action :delete
    recursive true
  end

  brew_install "postgresql"

  execute "create the database" do
    command "/usr/local/bin/initdb -U postgres --encoding=utf8 --locale=en_US /usr/local/var/postgres"
    user WS_USER
  end

  launch_agents_path = File.expand_path('.', File.join('~','Library', 'LaunchAgents'))
  directory launch_agents_path do
    action :create
    recursive true
    owner WS_USER
  end

  execute "create the database" do
    command "/usr/local/bin/createdb -U postgres"
    user WS_USER
  end

  execute "create the postgres '#{WS_USER}' superuser" do
    command "/usr/local/bin/createuser -U postgres --superuser #{WS_USER}"
    user WS_USER
  end
end
