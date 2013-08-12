class yum_repos::adobe { 
  yumrepo { 'adobe':
    enabled => '1',
    gpgcheck => '1',
    gpgkey => 'file:///etc/pki/rpm-gpg/RPM-GPG-KEY-adobe-linux',
    descr => 'Adobe Flash Repository',
    baseurl => 'http://linuxdownload.adobe.com/linux/x86_64/',
  }

  file { 'adobe-key':
    path => '/etc/pki/rpm-gpg/RPM-GPG-KEY-adobe-linux',
    ensure => present,
    source => 'puppet:///modules/yum_repos/RPM-GPG-KEY-adobe-linux',
    owner => root,
    group => root,
    mode => 644,
  } 
}
