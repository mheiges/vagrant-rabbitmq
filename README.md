## Vagrant RabbitMQ Box

### About

This box contains vagrant and puppet recipes for creating a CentOS 6 system with RabbitMQ and RabbitMQ Web Management.


### Install

* Download and install [Vagrant](https://www.vagrantup.com/downloads.html)
* Download and install  [VirtualBox](https://www.virtualbox.org/wiki/Downloads)
* Clone the project ```git clone --recursive git@github.com:mheiges/vagrant-rabbitmq.git```
* In the project dir run ```vagrant up```


### Installed Services

#### RabbitMQ

host: localhost  
port: 5672  

#### RabbitMQ Web client

url: http://localhost:15672/  
username: guest  
password: guest  
