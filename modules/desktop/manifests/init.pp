class desktop {
  include yum_repos::adobe
  
  $packages = [
       'fedup',
       'cinnamon',
       'emacs-nox',
       'keepassx',
       'workrave',

       'rdiff-backup',
               
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
  ]

  package { $packages:
      ensure => latest,
  }

}
