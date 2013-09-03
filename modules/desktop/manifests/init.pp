class desktop {
  include yum_repos::adobe
  include yum_repos::google
  
  $packages = [
       'fedup',
       'cinnamon',
       'emacs-nox',
       'keepassx',
       'workrave',
       'gnome-tweak-tool',
       'gimp',
       'whois',

       'rdiff-backup',
       'wget',
       'telnet',
       'google-talkplugin',
       'strace',
               
	'libpurple-perl',
        'pidgin',
        'purple-plugin_pack-pidgin',
        'gpodder',
        'gstreamer-plugins-ugly',
        'gstreamer1-plugins-bad-freeworld',
        'gstreamer1-plugins-ugly',
        'gstreamer1-libav',

        'flash-plugin',
	
        'gpointing-device-settings',
        'powertop',

        'apg',
  ]

  package { $packages:
      ensure => latest,
  }

}
