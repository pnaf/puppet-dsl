class admin {
  package { 'chrony':
    ensure => installed,
  }
  package { 'gdisk':
    ensure => installed,
  }
  file { '/etc/chrony/chrony.conf':
    ensure => file,
    group  => 'root',
    mode   => '0644',
    owner  => 'root',
    source => 'puppet:///modules/admin/chrony.conf',
  }
  service { 'chrony':
    ensure     => running,
    enable     => true,
    hasstatus  => false,
    hasrestart => true,
  }
  Package['chrony'] -> File['/etc/chrony/chrony.conf'] -> Service['chrony']
}
