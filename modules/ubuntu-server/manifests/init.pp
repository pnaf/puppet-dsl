class ubuntu-server {
  package { 'ubuntu-minimal':
    ensure => installed,
  }
  package { 'ubuntu-standard':
    ensure => installed,
  }
  Package['ubuntu-minimal'] -> Package['ubuntu-standard']
}
