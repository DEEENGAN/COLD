{pkgs, ... }: {

    gtk.enable = true;
    gtk.iconTheme.name = "WhiteSur";
    gtk.iconTheme.package = pkgs.whitesur-icon-theme;
    gtk.theme.name = "WhiteSur-Light";
    gtk.theme.package = pkgs.whitesur-gtk-theme;
    gtk.cursorTheme.name = "Numix-Cursor";
    gtk.cursorTheme.package = pkgs.numix-cursor-theme;
    home.sessionVariables.GTK_THEME = "whitesur";
    gtk.gtk3.extraConfig.Settings = ''
      '';
    gtk.gtk4.extraConfig.Settings = ''
      '';
}
