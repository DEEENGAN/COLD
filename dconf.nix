# Generated via dconf2nix: https://github.com/gvolpe/dconf2nix
{ lib, ... }:

with lib.hm.gvariant;

{
  dconf.settings = {
    "desktop/ibus/general" = {
      version = "1.5.28";
    };

    "io/elementary/terminal/saved-state" = {
      focused-tab = 0;
      tab-zooms = [];
      tabs = [];
      window-position = mkTuple [ 45 29 ];
      window-size = mkTuple [ 1335 787 ];
      window-state = "Normal";
      zoom = 1.0;
    };

    "org/freedesktop/ibus/engine/rime" = {
      switch-keys = "rime,Control+space";
    };

    "org/gnome/Console" = {
      last-window-size = mkTuple [ 652 481 ];
    };

    "org/gnome/control-center" = {
      last-panel = "keyboard";
      window-state = mkTuple [ 980 640 ];
    };

    "org/gnome/desktop/app-folders" = {
      folder-children = [ "Utilities" "YaST" ];
    };

    "org/gnome/desktop/app-folders/folders/Utilities" = {
      apps = [ "gnome-abrt.desktop" "gnome-system-log.desktop" "nm-connection-editor.desktop" "org.gnome.baobab.desktop" "org.gnome.Connections.desktop" "org.gnome.DejaDup.desktop" "org.gnome.Dictionary.desktop" "org.gnome.DiskUtility.desktop" "org.gnome.eog.desktop" "org.gnome.Evince.desktop" "org.gnome.FileRoller.desktop" "org.gnome.fonts.desktop" "org.gnome.seahorse.Application.desktop" "org.gnome.tweaks.desktop" "org.gnome.Usage.desktop" "vinagre.desktop" ];
      categories = [ "X-GNOME-Utilities" ];
      excluded-apps = [ "anki.desktop" ];
      name = "X-GNOME-Utilities.directory";
      translate = true;
    };

    "org/gnome/desktop/app-folders/folders/YaST" = {
      categories = [ "X-SuSE-YaST" ];
      name = "suse-yast.directory";
      translate = true;
    };

    "org/gnome/desktop/background" = {
      picture-uri = "file:///home/deeengan/Downloads/carina_nircam.jpg";
      picture-uri-dark = "file:///home/deeengan/Downloads/carina_nircam.jpg";
    };

    "org/gnome/desktop/input-sources" = {
      sources = [ (mkTuple [ "xkb" "us" ]) (mkTuple [ "ibus" "rime" ]) ];
      xkb-options = [ "terminate:ctrl_alt_bksp" ];
    };

    "org/gnome/desktop/interface" = {
      clock-format = "12h";
      color-scheme = "prefer-light";
      cursor-theme = "Numix-Cursor";
      enable-hot-corners = true;
      gtk-theme = "WhiteSur-Light";
      icon-theme = "WhiteSur";
    };

    "org/gnome/desktop/notifications" = {
      application-children = [ "gnome-power-panel" "org-gnome-nautilus" "com-usebottles-bottles" "firefox" "com-valvesoftware-steam" ];
      show-banners = true;
    };

    "org/gnome/desktop/notifications/application/com-usebottles-bottles" = {
      application-id = "com.usebottles.bottles.desktop";
    };

    "org/gnome/desktop/notifications/application/com-valvesoftware-steam" = {
      application-id = "com.valvesoftware.Steam.desktop";
    };

    "org/gnome/desktop/notifications/application/firefox" = {
      application-id = "firefox.desktop";
    };

    "org/gnome/desktop/notifications/application/gnome-power-panel" = {
      application-id = "gnome-power-panel.desktop";
    };

    "org/gnome/desktop/notifications/application/org-gnome-nautilus" = {
      application-id = "org.gnome.Nautilus.desktop";
    };

    "org/gnome/desktop/peripherals/mouse" = {
      natural-scroll = true;
      speed = 1.0;
    };

    "org/gnome/desktop/peripherals/touchpad" = {
      two-finger-scrolling-enabled = true;
    };

    "org/gnome/desktop/screensaver" = {
      picture-uri = "file:///home/deeengan/Downloads/minimalist-forest-river-4k-wallpaper-3840x2160.jpg";
    };

    "org/gnome/desktop/session" = {
      idle-delay = "uint32 1200";
    };

    "org/gnome/desktop/sound" = {
      event-sounds = true;
      theme-name = "__custom";
    };

    "org/gnome/desktop/wm/preferences" = {
      workspace-names = [ "Dynasty" ];
    };

    "org/gnome/evolution-data-server" = {
      migrated = true;
    };

    "org/gnome/mutter" = {
      attach-modal-dialogs = true;
      dynamic-workspaces = true;
      edge-tiling = true;
      focus-change-on-pointer-rest = true;
      workspaces-only-on-primary = true;
    };

    "org/gnome/nautilus/preferences" = {
      default-folder-viewer = "icon-view";
      migrated-gtk-settings = true;
      search-filter-time-type = "last_modified";
    };

    "org/gnome/nautilus/window-state" = {
      initial-size = mkTuple [ 1481 805 ];
      maximized = false;
    };

    "org/gnome/portal/filechooser/com/usebottles/bottles" = {
      last-folder-path = "/home/deeengan/Downloads";
    };

    "org/gnome/settings-daemon/plugins/power" = {
      power-button-action = "interactive";
      sleep-inactive-ac-timeout = "1800";
      sleep-inactive-ac-type = "suspend";
    };

    "org/gnome/shell" = {
      app-picker-layout = "[{'org.gnome.Settings.desktop': <{'position': <0>}>, 'org.gnome.Extensions.desktop': <{'position': <1>}>, 'mplayer.desktop': <{'position': <2>}>, 'fish.desktop': <{'position': <3>}>, 'anki.desktop': <{'position': <4>}>, 'nvim.desktop': <{'position': <5>}>, 'sioyek.desktop': <{'position': <6>}>, 'com.usebottles.bottles.desktop': <{'position': <7>}>, 'com.github.tchx84.Flatseal.desktop': <{'position': <8>}>, 'net.lutris.Lutris.desktop': <{'position': <9>}>, 'com.valvesoftware.Steam.desktop': <{'position': <10>}>}]";
      favorite-apps = [ "brave-browser.desktop" "Alacritty.desktop" ];
      welcome-dialog-last-shown-version = "44.1";
    };

    "org/gnome/terminal/legacy" = {
      menu-accelerator-enabled = true;
      shortcuts-enabled = true;
    };

    "org/gtk/gtk4/settings/file-chooser" = {
      date-format = "regular";
      location-mode = "path-bar";
      show-hidden = true;
      show-size-column = true;
      show-type-column = true;
      sidebar-width = 140;
      sort-column = "name";
      sort-directories-first = false;
      sort-order = "ascending";
      type-format = "category";
      view-type = "list";
      window-size = mkTuple [ 859 374 ];
    };

    "org/gtk/settings/file-chooser" = {
      clock-format = "12h";
      date-format = "regular";
      location-mode = "path-bar";
      show-hidden = true;
      show-size-column = true;
      show-type-column = true;
      sidebar-width = 183;
      sort-column = "name";
      sort-directories-first = false;
      sort-order = "ascending";
      type-format = "category";
      window-position = mkTuple [ 45 29 ];
      window-size = mkTuple [ 1231 902 ];
    };

    "system/locale" = {
      region = "en_US.UTF-8";
    };

  };
}
