class hadoop {
  cron { hadoop-daemon:
    ensure   => present,
    command  => "su -c 'export JAVA_HOME=/usr/lib/jvm/java-6-openjdk-amd64 && /scratch/hadoop/hadoop-1.0.2/bin/hadoop-daemon.sh start datanode && exit' -l hadoop && su -c 'export JAVA_HOME=/usr/lib/jvm/java-6-openjdk-amd64 && /scratch/hadoop/hadoop-1.0.2/bin/hadoop-daemon.sh start tasktracker && exit' -l hadoop",
    user     => root,
    hour     => absent,
    minute   => 0,
    month    => absent,
    monthday => absent,
    weekday  => absent,
  }
}
