class desktop {

  $packages = [
       'fedup',
       'cinnamon',
       'emacs-nox',
  ]

  package { $packages:
      ensure => latest,
  }

}
