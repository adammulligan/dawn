ruby_block "Check that xcode is installed" do
  block do
    `gcc --version`
    if $? != 0
      raise "XCode must be installed to run these recipes."
    end
  end
end
