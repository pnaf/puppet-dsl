class openjdk-6-jdk {
  # If the /usr/lib/jvm directory does not exist, install OpenJDK 6.
  exec { 'install-openjdk':
    command => "/usr/bin/apt-get -y install openjdk-6-jdk",
    onlyif  => "/usr/bin/test ! -d /usr/lib/jvm",
  }
  # If the /usr/lib/jvm/jdk1.6.0_38 directory exists, uninstall Java and install OpenJDK 6.
  exec { 'switch-to-openjdk':
    command => "/bin/rm /etc/alternatives/java && /bin/rm /etc/alternatives/javac && /bin/rm /etc/alternatives/javaws && /bin/rm -r /usr/lib/jvm && /usr/bin/apt-get -y install openjdk-6-jdk",
    onlyif  => "/usr/bin/test -d /usr/lib/jvm/jdk1.6.0_38",
  }
}
