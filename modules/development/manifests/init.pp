class development {
  include vagrant

  $packages = [
       'java-1.7.0-openjdk',
       'java-1.8.0-openjdk',
       'VirtualBox',
       'kmod-VirtualBox',
       'siege',
       'xorg-x11-server-Xvfb',
  ]

  package { $packages:
      ensure => latest,
  }

  file { 'git-profile.sh':
    path => '/etc/profile.d/git.sh',
    ensure => present,
    source => 'puppet:///modules/development/git-profile.sh',
    owner => root,
    group => root,
    mode => 644,
  }

}
