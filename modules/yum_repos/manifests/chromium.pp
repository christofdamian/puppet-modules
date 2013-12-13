class yum_repos::chromium {
  yumrepo { 'fedora-chromium-stable':
    enabled => '1',
    gpgcheck => '0',
    descr => 'Builds of the "stable" tag of the Chromium Web Browser',
    baseurl => 'http://repos.fedorapeople.org/repos/spot/chromium-stable/fedora-$releasever/$basearch/',
  }
}
