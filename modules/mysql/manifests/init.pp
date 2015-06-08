# install mysql-server package
class mysql {

  package { 'mysql-server':
    require => Exec['apt-update'],        # require 'apt-update' before installing
    ensure => installed,
  }

  # ensure mysql service is running
  service { 'mysql':
    ensure => running,
  }
}
