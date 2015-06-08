exec { 'apt-update':                    # exec resource named 'apt-update'
    command => '/usr/bin/apt-get update'
  }

node default { }

node 'puppetagent.example.com' {
    include apache
    include mysql
    include php
}
