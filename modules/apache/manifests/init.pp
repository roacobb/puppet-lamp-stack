# install apache2 package

class apache {
  package { 'apache2':
    require => Exec['apt-update'],        # require 'apt-update' before installing
    ensure => installed,
  }

  # ensure apache2 service is running
  service { 'apache2':
    ensure => running,
  }
}
