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

        # clocks
          # turns screen blank after a time period
            "org/gnome/desktop/session" = { idle-delay = "uint32 600"; };
            "org/gnome/desktop/interface" = { clock-format = "12h"; };
        
        # gnome should do what after a time period?
          "org/gnome/settings-daemon/plugins/power" = { sleep-inactive-ac-type = "suspend"; };
          "org/gnome/settings-daemon/plugins/power" = { sleep-inactive-ac-timeout = "1200"; };

        # functionality
          "org/gnome/desktop/interface" = { enable-hot-corners = true; };
          "org/gnome/settings-daemon/plugins/power" = { power-button-action = "interactive"; }; # interactive = shutdown, then nothing/suspend
          "org/gnome/shell" = { favorite-apps = [
                                                  "firefox.desktop"
                                                  "Alacritty.desktop"
      ];
    };
  };
}
