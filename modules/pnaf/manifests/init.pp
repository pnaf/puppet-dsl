class pnaf {
  file { '/home/pnaf':
    ensure => directory,
    group  => pnaf,
    mode   => 0755,
    owner  => pnaf,
  }
  file { '/home/pnaf/.ssh':
    ensure => directory,
    group  => pnaf,
    mode   => 0700,
    owner  => pnaf,
  }
  ssh_authorized_key { 'pnaf':
    name   => 'pnaf@gold-2013-09-22',
    ensure => present,
    key    => 'AAAAE2VjZHNhLXNoYTItbmlzdHA1MjEAAAAIbmlzdHA1MjEAAACFBAHQIndfb3WS+M3FO7vr2Yvb88oztrdZG6Ro23XbiDkycyMeLyZ/GHKIobGB2t+uR7/+6akk6DRJ5Z1gap+Cc72upQAb6kFY/b0ZmaeB5s3flkdyz22vU92zW5HTgM+JB2WvQ0H/tJFBt569KoDIjqbqjem1Xnhs/KmWu1Yb3GvNMFGUXA==',
    type   => 'ecdsa-sha2-nistp521',
    user   => 'pnaf',
  }
  File['/home/pnaf'] -> File['/home/pnaf/.ssh'] -> Ssh_authorized_key['pnaf']
}
