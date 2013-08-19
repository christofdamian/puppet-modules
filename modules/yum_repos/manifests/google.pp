class yum_repos::google { 
  yumrepo { 'google-talkplugin':
    enabled => '1',
    gpgcheck => '1',
    descr => 'Google Talk Plugin Repository',
    baseurl => 'http://dl.google.com/linux/talkplugin/rpm/stable/x86_64',
    gpgkey => 'file:///etc/pki/rpm-gpg/RPM-GPG-KEY-google',
  }

  file { 'google-key':
    path => '/etc/pki/rpm-gpg/RPM-GPG-KEY-google',
    ensure => present,
    source => 'puppet:///modules/yum_repos/RPM-GPG-KEY-google',
    owner => root,
    group => root,
    mode => 644,
  } 
}
