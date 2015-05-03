node 'rabbitmq' {

  class { 'erlang': epel_enable => true}

  class { '::rabbitmq':
    service_manage    => true,
    port              => '5672',
    delete_guest_user => false,
    admin_enable      => true,
  }

  Class['erlang'] -> Class['rabbitmq']

}