class java {
  Exec {
    path => [
      '/usr/bin',
      '/usr/sbin',
      '/bin',
      '/sbin'],
  }

  exec { 'bash -c "cd /tmp && rm -f jdk-6u38-linux-x64.bin && wget -q http://neil/java/jdk-6u38-linux-x64.bin && chmod u+x jdk-6u38-linux-x64.bin && yes | ./jdk-6u38-linux-x64.bin && rm -f jdk-6u38-linux-x64.bin && mkdir -p /usr/lib/jvm && mv jdk1.6.0_38 /usr/lib/jvm && update-alternatives --install \"/usr/bin/java\" \"java\" \"/usr/lib/jvm/jdk1.6.0_38/bin/java\" 1 && update-alternatives --install \"/usr/bin/javac\" \"javac\" \"/usr/lib/jvm/jdk1.6.0_38/bin/javac\" 1 && update-alternatives --install \"/usr/bin/javaws\" \"javaws\" \"/usr/lib/jvm/jdk1.6.0_38/bin/javaws\" 1"':
    creates => '/usr/lib/jvm/jdk1.6.0_38/bin/java'
  }
}
