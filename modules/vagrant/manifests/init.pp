class vagrant {

  $url = 'http://files.vagrantup.com/packages/a40522f5fabccb9ddabad03d836e120ff5d14093/vagrant_1.3.5_x86_64.rpm'
  $tmp = '/root/vagrant_1.3.5_x86_64.rpm'

  exec { 'download_vagrant':
    command => "/usr/bin/wget '$url' -O '$tmp'",
    creates => $tmp,
    require => Package['wget'],
    notify => Package['vagrant'],
  }

  package { 'vagrant':
    source => $tmp,
    provider => 'rpm',
    ensure => installed,
    require => Package['VirtualBox'],
  }

}
