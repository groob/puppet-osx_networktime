Puppet::Type.newtype(:networktimesettings) do

  @doc = <<-EOT
    Manage OSX System settings using the systemsetup utility


  EOT
  newproperty(:ensure) do
    newvalue(:on) do
      provider.on
    end
    newvalue(:off) do
      provider.off
    end
  end
  newparam(:name, :namevar => true)
end
