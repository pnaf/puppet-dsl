class bind9 {
  package { 'bind9':
    ensure => installed,
    before => File['/etc/bind/db.172.18.56', '/etc/bind/db.nbl'],
  }
  file { '/etc/bind/db.172.18.56':
    source => 'puppet:///modules/bind9/db.172.18.56',
    owner => 'root',
    group => 'bind',
    mode  => '0644',
  }
  file { '/etc/bind/db.nbl':
    source => 'puppet:///modules/bind9/db.nbl',
    owner  => 'root',
    group  => 'bind',
    mode   => '0644',
  }
  service { 'bind9':
    name   => 'bind9',
    ensure => running,
    enable => true,
  }
}
