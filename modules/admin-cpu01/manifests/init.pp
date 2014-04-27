class admin-cpu01 {
  package { 'chrony':
    ensure => installed,
  }
  package { 'gdisk':
    ensure => installed,
  }
  service { 'chrony':
    ensure     => running,
    enable     => true,
    hasstatus  => false,
    hasrestart => true,
  }
  Package['chrony'] -> Service['chrony']
}
