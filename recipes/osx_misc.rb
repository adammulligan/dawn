dawn_defaults "" do
  domain 'com.apple.TextEdit'
  key 'RichText'
  integer 0
end

dawn_defaults "" do
  domain 'com.apple.TextEdit'
  key 'PlainTextEncodingForWrite'
  integer 4
end

dawn_defaults "" do
  domain 'com.apple.TextEdit'
  key 'PlainTextEncoding'
  integer 4
end

dawn_defaults "Enable debug menu in disk utility" do
  domain 'com.apple.DiskUtility'
  key 'advanced-image-options'
  boolean true
end

dawn_defaults "Enable debug menu in disk utility" do
  domain 'com.apple.DiskUtility'
  key 'DUDebugMenuEnabled'
  boolean true
end

