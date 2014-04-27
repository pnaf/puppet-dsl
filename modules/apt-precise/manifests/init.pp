class apt-precise {
  file { '/etc/apt/sources.list':
    ensure => file,
    group  => 'root',
    mode   => '0644',
    owner  => 'root',
    source => 'puppet:///modules/apt-precise/sources.list',
  }
}
