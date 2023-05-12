{ pkgs, ... }:

{
  gtk = {
    enable = true;

    iconTheme = {
      name = "whitesur-gtk-theme";
      package = pkgs.whitesur-gtk-theme;
    };

    theme = {
      name = "whitesur-gtk-theme";
      package = pkgs.whitesur-gtk-theme;
    };

    cursorTheme = {
      name = "whitesur-gtk-theme";
      package = pkgs.whitesur-gtk-theme;
    };

    gtk3.extraConfig = {
      Settings = ''
        gtk-application-prefer-dark-theme=1
      '';
    };

    gtk4.extraConfig = {
      Settings = ''
        gtk-application-prefer-dark-theme=1
      '';
    };
  };
}
