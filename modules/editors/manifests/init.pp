class editors {
  package { 'nano':
    ensure => installed,
  }
  package { 'vim':
    ensure => installed,
  }
}
