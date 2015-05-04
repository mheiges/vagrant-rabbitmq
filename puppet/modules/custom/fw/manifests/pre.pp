# based on
# https://sysadmincasts.com/episodes/18-managing-iptables-with-puppet
class fw::pre {
  
  Firewall {
    require => undef,
  }

  # basic in/out
  firewall { '001 accept related established rules':
    chain    => 'INPUT',
    proto    => 'all',
    state    => ['RELATED', 'ESTABLISHED'],
    action   => 'accept',
  }

  firewall { "002 accept all icmp":
    chain    => 'INPUT',
    proto    => 'icmp',
    action   => 'accept',
  }

  firewall { '003 accept all to lo interface':
    chain    => 'INPUT',
    proto    => 'all',
    iniface  => 'lo',
    action   => 'accept',
  }

  firewall { '004 allow openssh':
    chain   => 'INPUT',
    state   => ['NEW'],
    dport   => '22',
    proto   => 'tcp',
    action  => 'accept',
  }  

}