class vagrant {

  $url = 'http://files.vagrantup.com/packages/b12c7e8814171c1295ef82416ffe51e8a168a244/vagrant_1.3.1_x86_64.rpm'
  $tmp = '/tmp/vagrant.rpm'

  exec { 'download_vagrant':
    command => "/usr/bin/wget '$url' -O '$tmp'",
    creates => $tmp,
    require => Package['wget'],
    notify => Exec['install_vagrant'],
  }

  exec { 'install_vagrant':
    command => "/usr/bin/rpm -U '$tmp'",
    refreshonly => true,
    require => Package['VirtualBox'],
  }

}
