class ruby_development::install_elasticsearch {

  exec { 'download_elasticsearch':
    command => '/usr/bin/wget https://download.elasticsearch.org/elasticsearch/elasticsearch/elasticsearch-0.90.3.noarch.rpm -O /tmp/elasticsearch.rpm',
    creates => '/tmp/elasticsearch.rpm',
    require => Package['wget'],
    notify => Exec['install_elasticsearch'],
  }

  exec { 'install_elasticsearch':
    command => '/usr/bin/rpm -U /tmp/elasticsearch.rpm',
    refreshonly => true,
  }

  class { 'elasticsearch':
    require => Exec['install_elasticsearch'],
  }

}