node 'rabbitmq' {

  class { 'erlang': epel_enable => true}

  class { '::rabbitmq':
    service_manage    => true,
    port              => '5672',
    delete_guest_user => false,
    admin_enable      => true,
  }

  Class['erlang'] -> Class['rabbitmq']

  firewall { '100 allow rabbitmq':
    chain   => 'INPUT',
    state   => ['NEW'],
    dport   => '5672',
    proto   => 'tcp',
    action  => 'accept',
  }

  firewall { '100 allow rabbitmq management':
    chain   => 'INPUT',
    state   => ['NEW'],
    dport   => '15672',
    proto   => 'tcp',
    action  => 'accept',
  }  

}