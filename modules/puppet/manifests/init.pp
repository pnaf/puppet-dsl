class puppet {
  package { 'puppet':
    ensure => installed,
  }
  service { 'puppet':
    ensure     => running,
    enable     => true,
    hasstatus  => true,
    hasrestart => true,
  }
  Package['puppet'] -> Service['puppet']
}
