dawn_defaults "Set Safari’s home page to `about:blank` for faster loading" do
  domain 'com.apple.Safari'
  key 'HomePage'
  string "about:blank"
end

dawn_defaults "Prevent Safari from opening ‘safe’ files automatically after downloading" do
  domain 'com.apple.Safari'
  key 'AutoOpenSafeDownloads'
  boolean false
end

dawn_defaults "Allow hitting the Backspace key to go to the previous page in history" do
  domain 'com.apple.Safari'
  key 'com.apple.Safari.ContentPageGroupIdentifier.WebKit2BackspaceKeyNavigationEnabled'
  boolean true
end

dawn_defaults "Hide Safari’s bookmarks bar by default " do
  domain 'com.apple.Safari'
  key 'ShowFavoritesBar'
  boolean false
end

dawn_defaults "Disable Safari’s thumbnail cache for History and Top Sites" do
  domain 'com.apple.Safari'
  key 'DebugSnapshotsUpdatePolicy'
  integer 2
end

dawn_defaults "Enable Safari’s debug menu" do
  domain 'com.apple.Safari'
  key 'IncludeInternalDebugMenu'
  boolean true
end

dawn_defaults "Make Safari’s search banners default to Contains instead of Starts With" do
  domain 'com.apple.Safari'
  key 'FindOnPageMatchesWordStartsOnly'
  boolean false
end

dawn_defaults "Enable the Develop menu and the Web Inspector in Safari" do
  domain 'com.apple.Safari'
  key 'IncludeDevelopMenu'
  boolean true
end

dawn_defaults "" do
  domain 'com.apple.Safari'
  key 'WebKitDeveloperExtrasEnabledPreferenceKey'
  boolean true
end

dawn_defaults "" do
  domain 'com.apple.Safari'
  key 'com.apple.Safari.ContentPageGroupIdentifier.WebKit2DeveloperExtrasEnabled'
  boolean true
end


dawn_defaults "Add a context menu item for showing the Web Inspector in web views" do
  domain 'NSGlobalDomain'
  key 'WebKitDeveloperExtras'
  boolean true
end
