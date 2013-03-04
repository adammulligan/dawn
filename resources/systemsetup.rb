=begin

A resource/provider to call to MacOS's plist 'defaults' command line tool.

Syntax:

dawn_systemsetup "set key repeat rate" do
  flag ""
  string ""
end

=end

actions :write

attribute :description, :kind_of => String, :name_attribute => true
attribute :flag, :kind_of => String, :default => nil
attribute :value, :kind_of => String, :default => nil

attribute :integer, :kind_of => Integer, :default => nil
attribute :string, :kind_of => String, :default => nil
attribute :boolean, :kind_of => [ TrueClass, FalseClass ], :default => nil
attribute :float, :kind_of => [Float, Integer], :default => nil
attribute :array, :kind_of => [Array, String, Integer], :defaults => nil

def initialize(name, run_context=nil)
  super
  @action = :write
end
