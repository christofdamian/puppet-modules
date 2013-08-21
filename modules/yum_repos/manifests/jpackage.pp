class yum_repos::jpackage {
  $version = '6.0'

  yumrepo { 'jpackage-free':
    enabled => '1',
    gpgcheck => '1',
    descr => "JPackage $version free, for generic",
    mirrorlist => "http://www.jpackage.org/mirrorlist.php?dist=generic&type=free&release=$version",
  }

  yumrepo { 'jpackage-devel':
    enabled => '1',
    gpgcheck => '1',
    descr => "JPackage $version devel, for generic",
    mirrorlist => "http://www.jpackage.org/mirrorlist.php?dist=generic&type=devel&release=$version",
  }
}
