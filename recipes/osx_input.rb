dawn_systemsetup "Set the timezone" do
  flag 'settimezone'
  string "Europe/London"
end

dawn_defaults "Trackpad: enable tap to click for this user and for the login screen" do
  domain 'com.apple.driver.AppleBluetoothMultitouch.trackpad'
  key 'Clicking'
  boolean true
end

dawn_defaults "" do
  domain 'NSGlobalDomain'
  key 'com.apple.mouse.tapBehavior'
  integer 1
end

dawn_defaults "Trackpad: map bottom right corner to right-click" do
  domain 'com.apple.driver.AppleBluetoothMultitouch.trackpad'
  key 'TrackpadCornerSecondaryClick'
  integer 2
end

dawn_defaults "" do
  domain 'com.apple.driver.AppleBluetoothMultitouch.trackpad'
  key 'TrackpadRightClick'
  boolean true
end

dawn_defaults "" do
  domain 'NSGlobalDomain'
  key 'com.apple.trackpad.trackpadCornerClickBehavior'
  integer 1
end

dawn_defaults "" do
  domain 'NSGlobalDomain'
  key 'com.apple.trackpad.enableSecondaryClick'
  boolean true
end

dawn_defaults "Enable full keyboard access for all controls" do
  domain 'NSGlobalDomain'
  key 'AppleKeyboardUIMode'
  integer 3
end

dawn_defaults "Disable press-and-hold for keys in favor of key repeat" do
  domain 'NSGlobalDomain'
  key 'ApplePressAndHoldEnabled'
  boolean false
end

dawn_defaults "Set a blazingly fast keyboard repeat rate" do
  domain 'NSGlobalDomain'
  key 'KeyRepeat'
  integer 0
end

dawn_defaults "Don't automatically illuminate built-in MacBook keyboard in low light" do
  domain 'com.apple.BezelServices'
  key 'kDim'
  boolean false
end

dawn_defaults "Turn off keyboard illumination when computer is not used for 5 minutes" do
  domain 'com.apple.BezelServices'
  key 'kDimTime'
  integer 300
end

dawn_defaults "Set units" do
  domain 'NSGlobalDomain'
  key 'AppleLanguages'
  array "en"
end

dawn_defaults "" do
  domain 'NSGlobalDomain'
  key 'AppleLocale'
  string "en_GB@currency=GBP"
end

dawn_defaults "" do
  domain 'NSGlobalDomain'
  key 'AppleMeasurementUnits'
  string "Centimeters"
end

dawn_defaults "" do
  domain 'NSGlobalDomain'
  key 'AppleMetricUnits'
  boolean true
end

dawn_defaults "Disable auto-correct" do
  domain 'NSGlobalDomain'
  key 'NSAutomaticSpellingCorrectionEnabled'
  boolean false
end
