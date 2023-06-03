{
    dconf.settings = {

        # aesthetics
          "org/gnome/desktop/background" = { picture-uri = "file:///home/deeengan/Downloads/temple-tree-across.jpg"; };
          "org/gnome/desktop/background" = { picture-uri-dark = "file:///home/deeengan/Downloads/temple-tree-across.jpg"; };
          "org/gnome/desktop/screensaver" = { picture-uri = "file:///home/deeengan/Downloads/silhouette-seashore-pink-sky-man-standing-smoke-can-sunset-5184x3456-3150.jpg"; };
            #primary-color = "#3465a4";
            #secondary-color = "#000000";
          "org/gnome/desktop/wm/preferences" = { workspace-names = [ "Dynasty" ]; };
          "org/gnome/desktop/interface" = { color-scheme = "prefer-light"; };
          #"desktop/ibus/panel/emoji" = { font = "Twitter Color Emoji"; };
          #"desktop/ibus/panel/emoji" = { hotkey = ["<Control>space"]; };

        # clocks
          # screen off
            "org/gnome/desktop/session" = { idle-delay = "uint32 1200"; };
            "org/gnome/desktop/interface" = { clock-format = "12h"; };
        
          # sleep, etc.
            "org/gnome/settings-daemon/plugins/power" = { sleep-inactive-ac-type = "suspend"; };
            "org/gnome/settings-daemon/plugins/power" = { sleep-inactive-ac-timeout = "1800"; };
#/org/gnome/desktop/input-sources/mru-sources DO PLEASE
#  [('xkb', 'us'), ('ibus', 'rime')]

        # utilities
          "org/gnome/desktop/interface" = { enable-hot-corners = true; };
          "org/gnome/settings-daemon/plugins/power" = { power-button-action = "interactive"; }; # interactive = shutdown, then nothing/suspend
          #"org/freedesktop/ibus/engine/rime" = { switch-keys = "rime,Control+space"; };
          "org/gnome/shell" = { favorite-apps = [
                                                  "firefox.desktop"
                                                  "Alacritty.desktop"
      ];
    };
  };
}
