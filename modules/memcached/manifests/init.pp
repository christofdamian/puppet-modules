class memcached {

  package { 'memcached':
    ensure => latest,
  }

  service { 'memcached':
    require => Package['memcached'],
    ensure => running,
    enable => true,
  }
}