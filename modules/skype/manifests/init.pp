class skype {

  $url = 'http://download.skype.com/linux/skype-4.2.0.11-fedora.i586.rpm'
  $tmp = '/tmp/skype.rpm'

  exec { 'download_skype':
    command => "/usr/bin/wget '$url' -O '$tmp'",
    creates => $tmp,
    require => Package['wget'],
    notify => Exec['install_skype'],
  }

  exec { 'install_skype':
    command => "/usr/bin/yum localinstall '$tmp'",
    refreshonly => true,
  }

}
