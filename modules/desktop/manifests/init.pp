class desktop {

  $packages = [
       'fedup',
       'cinnamon',
       'emacs-nox',
       'keepassx',
               
	'libpurple-perl',
        'pidgin',
        'purple-plugin_pack-pidgin',
        'gpodder',
        'gstreamer-plugins-ugly',
        'gstreamer1-plugins-bad-freeworld',
        'gstreamer1-plugins-ugly',
        'gstreamer1-libav',
	
        'gpointing-device-settings',
        'powertop',
  ]

  package { $packages:
      ensure => latest,
  }

}
