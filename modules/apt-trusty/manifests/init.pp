class apt-trusty {
  package { 'ubuntu-extras-keyring':
    ensure => installed,
    before => File['/etc/apt/sources.list'],
  }
  file { '/etc/apt/sources.list':
    ensure => file,
    group  => 'root',
    mode   => '0644',
    owner  => 'root',
    source => 'puppet:///modules/apt-trusty/sources.list',
  }
}
