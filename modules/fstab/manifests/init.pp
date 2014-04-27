class fstab {
  file { '/scratch2':
    ensure  => directory,
    mode    => '0755',
  }
  if $hostname == 'cpu24' {
    mount { 'scratch2':
      name    => '/scratch2',
      ensure  => mounted,
      device  => '/dev/sda8',
      fstype  => 'ext3',
      options => 'rw',
    }
  }
  else {
    mount { 'scratch2':
      name    => '/scratch2',
      ensure  => mounted,
      device  => '/dev/sda4',
      fstype  => 'ext4',
      options => 'rw',
    }
  }
}
