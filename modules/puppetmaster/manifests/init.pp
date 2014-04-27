class puppetmaster {
  package { 'puppetmaster':
    ensure => installed,
  }
  service { 'puppetmaster':
    ensure     => running,
    enable     => true,
    hasstatus  => true,
    hasrestart => true,
  }
  Package['puppetmaster'] -> Service['puppetmaster']
}
