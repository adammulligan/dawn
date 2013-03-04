dawn_defaults "Require password immediately after sleep" do
  domain 'com.apple.screensaver'
  key 'askForPassword'
  integer 1
end

dawn_defaults "Ask for password immediately after screensaver" do
  domain 'com.apple.screensaver'
  key 'askForPasswordDelay'
  integer 0
end

dawn_defaults "Save screenshots to the Downloads folder" do
  domain 'com.apple.screencapture'
  key 'location'
  string "$HOME/Downloads/_screenshots"
end

dawn_defaults "Save screenshots as PNGs" do
  domain 'com.apple.screencapture'
  key 'type'
  string 'png'
end

dawn_defaults "Disable shadow in screenshots" do
  domain 'com.apple.screencapture'
  key 'disable-shadow'
  boolean true
end

dawn_defaults "Enable subpixel font rendering" do
  domain 'NSGlobalDomain'
  key 'AppleFontSmoothing'
  integer 2
end
