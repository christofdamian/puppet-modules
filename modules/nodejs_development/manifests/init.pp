class nodejs_development {

  $packages = [
    'v8',
    'nodejs',

    'hiredis-devel',

    # nvm
    'perl-Digest-SHA',
  ]

  package { $packages:
      ensure => latest,
  }
}
