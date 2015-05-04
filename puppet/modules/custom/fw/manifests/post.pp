# based on
# https://sysadmincasts.com/episodes/18-managing-iptables-with-puppet
class fw::post {

  firewall { "910 deny all other input requests":
    chain      => 'INPUT',
    action     => 'reject',
    reject     => 'icmp-host-prohibited',
    proto      => 'all',
    before     => undef,
  }

  firewall { "910 deny all other forward requests":
    chain      => 'FORWARD',
    action     => 'reject',
    reject     => 'icmp-host-prohibited',
    proto      => 'all',
    before     => undef,
  }

}