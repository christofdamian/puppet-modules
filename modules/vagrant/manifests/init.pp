class vagrant {

  $url = 'http://files.vagrantup.com/packages/a40522f5fabccb9ddabad03d836e120ff5d14093/vagrant_1.3.5_x86_64.rpm'
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
