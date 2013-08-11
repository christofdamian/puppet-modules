class development {

  $packages = [
       'java',
       'VirtualBox',
  ]

  package { $packages:
      ensure => latest,
  }

}
