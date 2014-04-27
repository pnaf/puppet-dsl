class utils {
  package { 'smartmontools':
    ensure => installed,
  }
}
