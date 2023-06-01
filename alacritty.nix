{
    programs.alacritty.enable = true;
    programs.alacritty.settings.colors = import ./earthsong.nix;
    programs.alacritty.settings.window.opacity = 0.6;
    programs.alacritty.settings.window.decorations = "none";
    programs.alacritty.settings.font.normal.family = "FantasqueSansM Nerd Font"; # grab names from gnome font title top
    programs.alacritty.settings.font.normal.style = "Regular"; # grab names from gnome font title top
    #programs.alacritty.settings.font.emoji.family = "Twitter Color Emoji"; # grab names from gnome font title top
    #programs.alacritty.settings.font.bold.family = "FantasqueSansMono Nerd Font"; # grab names from gnome font title top
    #programs.alacritty.settings.font.italic.family = "FantasqueSansMono Nerd Font"; # grab names from gnome font title top
    programs.alacritty.settings.key_bindings = [  { key = "N"; mods = "Control"; action = "SpawnNewInstance"; }
                                                  { key = "W"; mods = "Control|Shift"; action = "Quit"; } ];
    programs.alacritty.settings.cursor = { style = "Beam"; };

}
