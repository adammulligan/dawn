dawn_defaults "Disable open/close window animations" do
  domain 'NSGlobalDomain'
  key 'NSAutomaticWindowAnimationsEnabled'
  boolean true
end

dawn_defaults "Increase window resize speed" do
  domain 'NSGlobalDomain'
  key 'NSWindowResizeTime'
  float 0.001
end

dawn_defaults "Expand save panel" do
  domain 'NSGlobalDomain'
  key 'NSNavPanelExpandedStateForSaveMode'
  boolean true
end

dawn_defaults "Expand print panel" do
  domain 'NSGlobalDomain'
  key 'PMPrintingExpandedStateForPrint'
  boolean true
end

dawn_defaults "Save to disk by default" do
  domain 'NSGlobalDomain'
  key 'NSDocumentSaveNewDocumentsToCloud'
  boolean false
end
