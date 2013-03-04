dawn_defaults "Prevent time machine from prompting to use new hard drives as backup volume" do
  domain 'com.apple.TimeMachine'
  key 'DoNotOfferNewDisksForBackup'
  boolean true
end

