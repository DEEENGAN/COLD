{
    programs.alacritty.enable = true;
    programs.alacritty.settings.colors = import ./earthsong.nix;
    programs.alacritty.settings.window.opacity = 0.6;
    programs.alacritty.settings.window.decorations = "none";
    programs.alacritty.settings.font.normal.family = "FantasqueSansM Nerd Font";
    #programs.alacritty.settings.font.normal.style = "Regular";
    programs.alacritty.settings.font.fontconfig.family = "Twitter Color Emoji";
    #programs.alacritty.settings.font.bold.family = "FantasqueSansM Nerd Font";
    #programs.alacritty.settings.font.bold.style = "Bold";
    #programs.alacritty.settings.font.italics.family = "FantasqueSansM Nerd Font";
    #programs.alacritty.settings.font.italics.style = "Italic";
    programs.alacritty.settings.key_bindings = [  { key = "N"; mods = "Control"; action = "SpawnNewInstance"; }
                                                  { key = "W"; mods = "Control|Shift"; action = "Quit"; } ];
    programs.alacritty.settings.cursor = { style = "Beam"; };

}
