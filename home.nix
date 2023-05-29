{ config, pkgs, ... }: {

  home.username = "deeengan";
  home.homeDirectory = "/home/deeengan";
  home.stateVersion = "22.11";
  programs.home-manager.enable = true;

    home.packages = with pkgs; [
	    anki-bin
	    pinentry
	    tilix
	    unzip
	    vim
	    wl-clipboard
      borgbackup
      mplayer
      gnupg
  ];

    programs.alacritty.enable = true;
    programs.alacritty.settings.window.opacity = 0.6;
    programs.alacritty.settings.window.decorations = "none";
    programs.alacritty.settings.font.normal.family = "FantasqueSansMono";
    

    # tilix
        programs.bash.enableVteIntegration = true;

    services.gpg-agent.enable = true;
    services.gpg-agent.pinentryFlavor = "curses";
    services.gpg-agent.enableSshSupport = true;
    services.gpg-agent.maxCacheTtl = 28800;
    services.gpg-agent.defaultCacheTtl = 28800;
    services.gpg-agent.extraConfig = ''
      allow-loopback-pinentry
'';

    programs.gpg.enable = true;
    programs.gpg.settings = { pinentry-mode = "loopback"; };

    #programs.git.extraConfig.gpg.program = "gpg2";
    programs.git.enable = true;
    programs.git.extraConfig.color.ui = true;
    programs.git.extraConfig.commit.gpgsign = true;
    programs.git.extraConfig.filter.lfs.clean = "git-lfs clean -- %f";
    programs.git.extraConfig.filter.lfs.process = "git-lfs filter-process";
    programs.git.extraConfig.filter.lfs.required = true;
    programs.git.extraConfig.filter.lfs.smudge = "git-lfs smudge -- %f";
    programs.git.extraConfig.init.defaultBranch = "main";
    programs.git.extraConfig.pull.rebase = true;
    programs.git.extraConfig.rebase.autoStash = true;
    programs.git.extraConfig.user.signingkey = "8C0C6887!";
    programs.git.ignores = [ ".DS_Store" ];
    programs.git.userEmail = "writing@deeengan.com";
    programs.git.userName = "Dee Engan";

    gtk.enable = true;
    gtk.iconTheme.name = "Papirus-Dark";
    gtk.iconTheme.package = pkgs.palenight-theme;
    gtk.theme.name = "palenight";
    gtk.theme.package = pkgs.palenight-theme;
    gtk.cursorTheme.name = "Numix-Cursor";
    gtk.cursorTheme.package = pkgs.numix-cursor-theme;
    home.sessionVariables.GTK_THEME = "palenight";
    gtk.gtk3.extraConfig.Settings = ''
      '';
    gtk.gtk4.extraConfig.Settings = ''
      '';
    
    dconf.settings = {
      "org/gnome/shell" = {
        favorite-apps = [
          "firefox.desktop"
          "tilix.desktop"
      ];
    };
      
      "org/gnome/desktop/interface" = {
        color-scheme = "prefer-dark";
        enable-hot-corners = true;
    };
      
      "org/gnome/desktop/wm/preferences" = {
        workspace-names = [ "Dynasty" ];
    };
    
      "org/gnome/desktop/background" = {
        picture-uri = "file:///home/deeengan/Downloads/astronaut-nasa-space-suit-neon-pink-2425x3056-1125.jpg";
        picture-uri-dark = "file:///home/deeengan/Downloads/astronaut-nasa-space-suit-neon-pink-2425x3056-1125.jpg";
    };
      
      "org/gnome/desktop/screensaver" = {
        picture-uri = "file:///home/deeengan/Downloads/silhouette-seashore-pink-sky-man-standing-smoke-can-sunset-5184x3456-3150.jpg";
        #primary-color = "#3465a4";
        #secondary-color = "#000000";
    };

  };
}
