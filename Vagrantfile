Vagrant.configure('2') do |config|
  config.vm.define 'rabbitmq' do |rabbitmq| end
	config.vm.hostname = 'rabbitmq'
	config.vm.box = 'puppetlabs/centos-6.6-64-puppet'
  config.vm.box_url = 'https://atlas.hashicorp.com/puppetlabs/boxes/centos-6.6-64-puppet'

	config.vm.network :forwarded_port, guest: 5672, host: 5672, auto_correct: true
	config.vm.network :forwarded_port, guest: 15672, host: 15672, auto_correct: true

  config.vm.provision :shell, :path   => "install-puppet-modules.sh"
  config.vm.provision :shell, :inline => 'yum clean all'

	config.vm.provision :puppet do |puppet|
	  puppet.manifests_path = 'puppet/manifests'
	  puppet.manifest_file = ''
	  puppet.hiera_config_path = 'puppet/hiera.yaml'
    puppet.module_path = 'puppet/modules'
  end
  
	config.vm.provider :virtualbox do |v|
		v.name = 'rabbitmq'
	end

end
