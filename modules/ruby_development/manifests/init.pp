class ruby_development {

  $packages = [
    # devex
    'libcurl-devel',
    'GeoIP-devel',
    'ImageMagick-devel',
    'postgresql-devel',
    'sqlite-devel',
    'v8',
    'nodejs',
    'postgresql-server',

    # rvm
    'patch',
    'gcc-c++',
    'readline-devel',
    'libyaml-devel',
    'libffi-devel',
    'openssl-devel',
    'autoconf',
    'automake',
    'libtool',
    'bison',
  ]

  package { $packages:
      ensure => latest,
  }

}
