{ config, pkgs, ... }: {

  home.username = "deeengan";
  home.homeDirectory = "/home/deeengan";
  home.stateVersion = "22.11";
  programs.home-manager.enable = true;

    imports = [ ./git.nix
                ./alacritty.nix
                ./gpg.nix
                ./gtk.nix
            ];

    home.packages = with pkgs; [
	    anki-bin
	    pinentry
	    unzip
	    vim
	    wl-clipboard
      borgbackup
      mplayer
      gnupg
      firefox
  ];

    dconf.settings = {

      "org/gnome/shell" = { favorite-apps = [
                                              "firefox.desktop"
                                              "Alacritty.desktop"
      ];
    };
        "org/gnome/desktop/interface" = { color-scheme = "prefer-light"; };
        "org/gnome/desktop/interface" = { enable-hot-corners = true; };
        "org/gnome/desktop/wm/preferences" = { workspace-names = [ "Dynasty" ]; };
        "org/gnome/desktop/background" = { picture-uri = "file:///home/deeengan/Downloads/chinese-temple-4k-lh.jpg"; };
        "org/gnome/desktop/background" = { picture-uri-dark = "file:///home/deeengan/Downloads/chinese-temple-4k-lh.jpg"; };
        "org/gnome/desktop/screensaver" = { picture-uri = "file:///home/deeengan/Downloads/silhouette-seashore-pink-sky-man-standing-smoke-can-sunset-5184x3456-3150.jpg"; };
          #primary-color = "#3465a4";
          #secondary-color = "#000000";

  };
}
