action :write do
  execute "#{new_resource.description} - #{new_resource.flag}"  do
    command "systemsetup -#{new_resource.flag} #{value_as_type}"
    user WS_USER
  end
end

def value_as_type
  return '"' + value + '"' if new_resource.string
  return value
end

def value
  new_resource.integer ||
    new_resource.string ||
    (new_resource.float && new_resource.float.to_f) ||
    new_resource.boolean
end
