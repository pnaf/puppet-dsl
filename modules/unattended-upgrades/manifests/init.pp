class unattended-upgrades {
  file { '/etc/apt/apt.conf.d/20auto-upgrades':
    source => 'puppet:///modules/unattended-upgrades/20auto-upgrades',
  }
  package { 'unattended-upgrades':
    ensure => installed,
  }
  Package['unattended-upgrades'] -> File['/etc/apt/apt.conf.d/20auto-upgrades']
}
