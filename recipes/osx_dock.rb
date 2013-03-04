dawn_defaults "Tile Size" do
  domain 'com.apple.dock'
  key 'tilesize'
  integer 36
end

dawn_defaults "Spring Loading" do
  domain 'com.apple.dock'
  key 'enable-spring-load-actions-on-all-items'
  boolean true
end

dawn_defaults "Show indicator lights for open applications" do
  domain 'com.apple.dock'
  key 'show-process-indicators'
  boolean true
end

dawn_defaults "Don't animate opening applications" do
  domain 'com.apple.dock'
  key 'launchanim'
  boolean false
end

dawn_defaults "Increase speed of mission control animations" do
  domain 'com.apple.dock'
  key 'expose-animation-duration'
  float 0.1
end

dawn_defaults "Disable dashboard" do
  domain 'com.apple.dashboard'
  key 'mcx-disabled'
  boolean true
end

dawn_defaults "2D Dock" do
  domain 'com.apple.dock'
  key 'no-glass'
  boolean true
end

dawn_defaults "Autohide dock" do
  domain 'com.apple.dock'
  key 'autohide'
  boolean true
end

dawn_defaults "Show hidden application as transparent" do
  domain 'com.apple.dock'
  key 'showhidden'
  boolean true
end
