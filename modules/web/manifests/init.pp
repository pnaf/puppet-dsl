class web {
  package { 'firefox':
    ensure => installed,
  }
  package { 'flashplugin-installer':
    ensure => installed,
  }
  package { 'lynx-cur':
    ensure => installed,
  }
  Package['firefox'] -> Package['flashplugin-installer']
}
