Package {
  allow_virtual => true,
}

include 'epel'
include 'erlang'

class { '::rabbitmq':
  service_manage    => true,
  port              => '5672',
  delete_guest_user => false,
  admin_enable      => true,
}

