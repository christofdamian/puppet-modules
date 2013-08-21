class vagrant {

  $url = 'http://files.vagrantup.com/packages/7ec0ee1d00a916f80b109a298bab08e391945243/vagrant_1.2.7_x86_64.rpm'
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