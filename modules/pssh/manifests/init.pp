class pssh {
  file { '/home/hadoop':
    ensure => directory,
    owner  => 'hadoop',
    group  => 'hadoop-users',
  }
  file { '/home/hadoop/.ssh':
    ensure => directory,
    owner  => 'hadoop',
    group  => 'hadoop-users',
  }
  file { '/home/hadoop/.ssh/authorized_keys':
    ensure => file,
    owner  => 'hadoop',
    group  => 'hadoop-users',
    mode   => '0644',
    source => 'puppet:///modules/pssh/hadoop/authorized_keys',
  }
  file { '/root/.ssh':
    ensure => directory,
    owner  => 'root',
    group  => 'root',
    mode   => '0700',
  }
  file { '/root/.ssh/authorized_keys':
    ensure => file,
    owner  => 'root',
    group  => 'root',
    mode   => '0644',
    source => 'puppet:///modules/pssh/root/authorized_keys',
  }
  File['/root/.ssh'] -> File['/root/.ssh/authorized_keys'] -> File['/home/hadoop'] -> File['/home/hadoop/.ssh'] -> File['/home/hadoop/.ssh/authorized_keys']
}
