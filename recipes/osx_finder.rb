dawn_defaults "Allow quitting finder" do
  domain 'com.apple.finder'
  key 'QuitMenuItem'
  boolean true
end

dawn_defaults "Disable window animations" do
  domain 'com.apple.finder'
  key 'DisableAllAnimations'
  boolean true
end

dawn_defaults "Show external hard drives on desktop" do
  domain 'com.apple.finder'
  key 'ShowExternalHardDrivesOnDesktop'
  boolean false
end

dawn_defaults "Show Hard Drives On Desktop" do
  domain 'com.apple.finder'
  key 'ShowHardDrivesOnDesktop'
  boolean false
end

dawn_defaults "Show Mounted Servers On Desktop" do
  domain 'com.apple.finder'
  key 'ShowMountedServersOnDesktop'
  boolean false
end

dawn_defaults "Show Removable Media On Desktop" do
  domain 'com.apple.finder'
  key 'ShowRemovableMediaOnDesktop'
  boolean false
end

dawn_defaults "Show Status Bar in Finder" do
  domain 'com.apple.finder'
  key 'ShowStatusBar'
  boolean true
end

dawn_defaults "Enable text selection in quicklook" do
  domain 'com.apple.finder'
  key 'QLEnableTextSelection'
  boolean true
end

dawn_defaults "Always start search in the current folder" do
  domain 'com.apple.finder'
  key 'FXDefaultSearchScope'
  string "SCcf"
end

dawn_defaults "Disable extension change warning" do
  domain 'com.apple.finder'
  key 'FXEnableExtensionChangeWarning'
  boolean false
end

dawn_defaults "Open window when a volume is mounted" do
  domain 'com.apple.finder'
  key 'OpenWindowForNewRemovableDisk'
  boolean true
end

dawn_defaults "Always display directories in column view" do
  domain 'com.apple.finder'
  key 'FXPreferredViewStyle'
  string "clmv"
end

dawn_defaults "Always empty trash securely" do
  domain 'com.apple.finder'
  key 'EmptyTrashSecurely'
  boolean true
end

dawn_defaults "Skipy verifying disk images" do
  domain 'com.apple.frameworks.diskimages'
  key 'skip-verify'
  boolean true
end

dawn_defaults "Skip verifying disk images" do
  domain 'com.apple.frameworks.diskimages'
  key 'skip-verify-locked'
  boolean true
end

dawn_defaults "Skip verifying disk images" do
  domain 'com.apple.frameworks.diskimages'
  key 'skip-verify-remove'
  boolean true
end

dawn_defaults "Open window when a volume is mounted" do
  domain 'com.apple.frameworks.diskimages'
  key 'auto-open-ro-root'
  boolean true
end

dawn_defaults "Open window when a volume is mounted" do
  domain 'com.apple.frameworks.diskimages'
  key 'auto-open-rw-root'
  boolean true
end

dawn_defaults "Enable AirDrop for ethernet and other unsupported Macs" do
  domain 'com.apple.NetworkBrowser'
  key 'BrowseAllInterfaces'
  boolean true
end

dawn_defaults "Don't write .DS_STORE files to network devices" do
  domain 'com.apple.desktopservices'
  key 'DSDontWriteNetworkStores'
  boolean true
end

dawn_defaults "Always show file extensions" do
  domain 'NSGlobalDomain'
  key 'AppleShowAllExtensions'
  boolean true
end
