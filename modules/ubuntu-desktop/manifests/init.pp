class ubuntu-desktop {
  package { 'ubuntu-minimal':
    ensure => installed,
  }
  package { 'ubuntu-standard':
    ensure => installed,
  }
  package { 'ubuntu-desktop':
    ensure => installed,
  }
  service { 'lightdm':
    ensure    => running,
    enable    => true,
    hasstatus => true,
  }
  Package['ubuntu-minimal'] -> Package['ubuntu-standard'] -> Package['ubuntu-desktop'] -> Service['lightdm']
}
