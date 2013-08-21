class redis {

  package { 'redis':
    ensure => latest,
  }

  service { 'redis':
    require => Package['redis'],
    ensure => running,
    enable => true,
  }
}