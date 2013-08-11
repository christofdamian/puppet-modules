class development {

  $packages = [
       'java-1.7.0-openjdk',
       'java-1.8.0-openjdk',
       'VirtualBox',
  ]

  package { $packages:
      ensure => latest,
  }

}
