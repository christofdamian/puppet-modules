class ruby_development {
  include postgresql::server
  include postgresql::devel
  include nodejs_development

  $packages = [
    # devex
    'libcurl-devel',
    'GeoIP-devel',
    'ImageMagick-devel',
    'sqlite-devel',
    'libxml-devel',
    'libxml2-devel',
    'libxslt-devel',
               
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
