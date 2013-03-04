dawn_defaults "Enable the WebKit Developer Tools in the Mac App Store" do
  domain 'com.apple.appstore'
  key 'WebKitDeveloperExtras'
  boolean true
end

dawn_defaults "Enable debug menu in App Store" do
  domain 'com.apple.appstore'
  key 'ShowDebugMenu'
  boolean true
end
