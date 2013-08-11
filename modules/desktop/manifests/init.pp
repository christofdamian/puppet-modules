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
	
        'gpointing-device-settings',
        'powertop',
  ]

  package { $packages:
      ensure => latest,
  }

}
