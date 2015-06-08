# install php5 package

class php {

  package { 'php5':
    require => Exec['apt-update'],        # require 'apt-update' before installing
    ensure => installed,
  }

  # ensure info.php file exists
  file { '/var/www/html/info.php':
    ensure => file,
    content => '<?php  phpinfo(); ?>',    # phpinfo code
    require => Package['apache2'],        # require 'apache2' package before creating
  }
}
