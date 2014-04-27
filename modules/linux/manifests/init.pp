class linux {
  case $operatingsystem {
    ubuntu: {
      $motd = '/var/run/motd'
    }
  }

  package { 'coreutils':
    ensure => installed,
  }
  file { '/etc/at.deny':
    ensure => file,
    owner  => 'root',
    group  => 'daemon',
    mode   => '0640',
  }
  file { '/etc/gshadow':
    ensure => file,
    owner  => 'root',
    group  => 'shadow',
    mode   => '0640',
  }
  file { '/etc/passwd':
    ensure => file,
    owner  => 'root',
    group  => 'root',
    mode   => '0644',
  }
  file { '/etc/shadow':
    ensure => file,
    owner  => 'root',
    group  => 'shadow',
    mode   => '0640',
  }
}
