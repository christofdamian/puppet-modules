class ruby_development {

  # devex
  $packages = [
    'libcurl-devel',
    'GeoIP-devel',
    'ImageMagick-devel'
  ]

  package { $packages:
      ensure => latest,
  }

}
