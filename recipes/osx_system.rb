dawn_defaults "Disable resume" do
  domain 'NSGlobalDomain'
  key 'NSQuitAlwaysKeepsWindows'
  boolean false
end

dawn_defaults "Disable automatic killing of inactive apps" do
  domain 'NSGlobalDomain'
  key 'NSDisableAutomaticTermination'
  boolean true
end

dawn_defaults "Set help viewer windows to non-floating mode" do
  domain 'com.apple.helpviewer'
  key 'DevMode'
  boolean true
end

dawn_defaults "Check for software updates daily" do
  domain 'com.apple.SoftwareUpdate'
  key 'ScheduleFrequency'
  integer 1
end
