class desktop {
  include yum_repos::adobe
  include yum_repos::google
  include 'yum_repos::rpmfusion::nonfree'
  
  include skype

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
       'screen',
       'tmux',
       'baobab',

	'libpurple-perl',
        'pidgin',
        'aspell-de',
        'hunspell-en-GB',
        'hunspell-de',
        'purple-plugin_pack-pidgin',
        'gpodder',
        'gstreamer-plugins-ugly',
        'gstreamer1-plugins-bad-freeworld',
        'gstreamer1-plugins-ugly',
        'gstreamer1-libav',

        'flash-plugin',
        'rhythmbox',
        'libmp4v2',

        'gpointing-device-settings',
        'powertop',

        'apg',
        'dos2unix',
        'simple-mtpfs',
        'ffmpeg',
        'liveusb-creator',

        'levien-inconsolata-fonts',

         'qstars-xscreensaver',
         'rss-glx-xscreensaver',
         'tempest-xscreensaver',
         'xscreensaver',
         'xscreensaver-base',
         'xscreensaver-extras',
         'xscreensaver-extras-base',
         'xscreensaver-extras-gss',
         'xscreensaver-gl-base',
         'xscreensaver-gl-extras',
         'xscreensaver-gl-extras-gss',
         'xstar-xscreensaver',
         'fortune-mod',
               

  ]

  package { $packages:
      ensure => latest,
  }

}
