Puppet::Type.type(:networktimesettings).provide :osx do
  desc "Provides certain system settings using the systemsetup utility on OS X"

  confine :operatingsystem  => :darwin

  defaultfor :operatingsystem => :darwin

  commands :systemsetup  => "/usr/sbin/systemsetup"

  def getusingnetworktime
  systemsetup("-getusingnetworktime").delete("Network Time:").downcase
  end
  def ensure
    getusingnetworktime
  end
  def on
    systemsetup('-setusingnetworktime','on')
  end

  def off
    systemsetup('-setusingnetworktime','off')
  end

end
