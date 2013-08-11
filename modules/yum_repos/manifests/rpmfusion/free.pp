class yum_repos::rpmfusion::free { 
  # rpmfusion-free repos
  yumrepo { 'rpmfusion-free':
    enabled => '1',
    gpgcheck => '1',
    metadata_expire => '7d',
    gpgkey => 'file:///etc/pki/rpm-gpg/RPM-GPG-KEY-rpmfusion-free-fedora-$releasever-$basearch',
    descr => 'RPM Fusion for Fedora $releasever - Free',
    mirrorlist => 'http://mirrors.rpmfusion.org/mirrorlist?repo=free-fedora-$releasever&arch=$basearch',
  }

  yumrepo { 'rpmfusion-free-debuginfo':
    enabled => '0',
    gpgcheck => '1',
    metadata_expire => '7d',
    gpgkey => 'file:///etc/pki/rpm-gpg/RPM-GPG-KEY-rpmfusion-free-fedora-$releasever-$basearch',
    descr => 'RPM Fusion for Fedora $releasever - Free - Debug',
    mirrorlist => 'http://mirrors.rpmfusion.org/mirrorlist?repo=free-fedora-debug-$releasever&arch=$basearch',
  }

  yumrepo { 'rpmfusion-free-source':
    enabled => '0',
    gpgcheck => '1',
    metadata_expire => '7d',
    gpgkey => 'file:///etc/pki/rpm-gpg/RPM-GPG-KEY-rpmfusion-free-fedora-$releasever-$basearch',
    descr => 'RPM Fusion for Fedora $releasever - Free - Source',
    mirrorlist => 'http://mirrors.rpmfusion.org/mirrorlist?repo=free-fedora-source-$releasever&arch=$basearch',
  }

  # rpmfusion-free-updates repos
  yumrepo { 'rpmfusion-free-updates':
    enabled => '1',
    gpgcheck => '1',
    gpgkey => 'file:///etc/pki/rpm-gpg/RPM-GPG-KEY-rpmfusion-free-fedora-$releasever-$basearch',
    descr => 'RPM Fusion for Fedora $releasever - Free - Updates',
    mirrorlist => 'http://mirrors.rpmfusion.org/mirrorlist?repo=free-fedora-updates-released-$releasever&arch=$basearch',
    proxy => $proxy,
  }

  yumrepo { 'rpmfusion-free-updates-debuginfo':
    enabled => '0',
    gpgcheck => '1',
    gpgkey => 'file:///etc/pki/rpm-gpg/RPM-GPG-KEY-rpmfusion-free-fedora-$releasever-$basearch',
    descr => 'RPM Fusion for Fedora $releasever - Free - Updates Debug',
    mirrorlist => 'http://mirrors.rpmfusion.org/mirrorlist?repo=free-fedora-updates-released-debug-$releasever&arch=$basearch',
  }

  yumrepo { 'rpmfusion-free-updates-source':
    enabled => '0',
    gpgcheck => '1',
    gpgkey => 'file:///etc/pki/rpm-gpg/RPM-GPG-KEY-rpmfusion-free-fedora-$releasever-$basearch',
    descr => 'RPM Fusion for Fedora $releasever - Free - Updates Source',
    mirrorlist => 'http://mirrors.rpmfusion.org/mirrorlist?repo=free-fedora-updates-released-source-$releasever&arch=$basearch',
  }

  # rpmfusion-free-updates-testing
  yumrepo { 'rpmfusion-free-updates-testing':
    enabled => '0',
    gpgcheck => '1',
    gpgkey => 'file:///etc/pki/rpm-gpg/RPM-GPG-KEY-rpmfusion-free-fedora-$releasever-$basearch',
    descr => 'RPM Fusion for Fedora $releasever - Free - Test Updates',
    mirrorlist => 'http://mirrors.rpmfusion.org/mirrorlist?repo=free-fedora-updates-testing-$releasever&arch=$basearch',
  }

  yumrepo { 'rpmfusion-free-updates-testing-debuginfo':
    enabled => '0',
    gpgcheck => '1',
    gpgkey => 'file:///etc/pki/rpm-gpg/RPM-GPG-KEY-rpmfusion-free-fedora-$releasever-$basearch',
    descr => 'RPM Fusion for Fedora $releasever - Free - Test Updates Debug',
    mirrorlist => 'http://mirrors.rpmfusion.org/mirrorlist?repo=free-fedora-updates-testing-debug-$releasever&arch=$basearch',
  }

  yumrepo { 'rpmfusion-free-updates-testing-source':
    enabled => '0',
    gpgcheck => '1',
    gpgkey => 'file:///etc/pki/rpm-gpg/RPM-GPG-KEY-rpmfusion-free-fedora-$releasever-$basearch',
    descr => 'RPM Fusion for Fedora $releasever - Free - Test Updates Source',
    mirrorlist => 'http://mirrors.rpmfusion.org/mirrorlist?repo=free-fedora-updates-testing-source-$releasever&arch=$basearch',
  }


  file { 'free-key':
    path => "/etc/pki/rpm-gpg/RPM-GPG-KEY-rpmfusion-free-fedora-19-x86_64",
    ensure => present,
    source => "puppet:///modules/yum_repos/RPM-GPG-KEY-rpmfusion-free-fedora-19",
    owner => root,
    group => root,
    mode => 644,
  } 
}
