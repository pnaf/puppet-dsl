class net {
  file { '/etc/defaultdomain':
    ensure => file,
    mode   => '0644',
    source => 'puppet:///modules/net/defaultdomain',
    owner  => 'root',
    group  => 'root',
  }
  file { '/etc/ssh/sshd_config':
    ensure => file,
    mode   => '0644',
    source => 'puppet:///modules/net/sshd_config',
    owner  => 'root',
    group  => 'root',
  }
  file { '/etc/yp.conf':
    source => 'puppet:///modules/net/yp.conf',
  }
  package { 'nis':
    ensure => installed,
  }
  package { 'openssh-server':
    ensure => installed,
  }
  service { 'ssh':
    ensure    => running,
    enable    => true,
    subscribe => File['/etc/ssh/sshd_config'],
  }
  Package['nis'] -> File['/etc/defaultdomain'] -> Package['openssh-server'] -> File['/etc/ssh/sshd_config']
}
