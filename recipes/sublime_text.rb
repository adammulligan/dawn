include_recipe "dawn::user_owns_usr_local"

dmg_package "Sublime Text 2" do
  dmg_name "Sublime%20Text%202.0.1"
  source "http://c758482.r82.cf2.rackcdn.com/Sublime%20Text%202.0.1.dmg"
  checksum "b5f91ee4f62d36c0490c021d5fb134b9e7cb3936"
  owner WS_USER
end

link "/usr/local/bin/subl" do
  to "/Applications/Sublime Text 2.app/Contents/SharedSupport/bin/subl"
end
