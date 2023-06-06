{
    programs.alacritty.enable = true;
    programs.alacritty.settings.colors = import ./adventure-time.nix;
    programs.alacritty.settings.window.opacity = 0.6;
    programs.alacritty.settings.window.decorations = "none";
    programs.alacritty.settings.font.normal.family = "FantasqueSansM Nerd Font";
    programs.alacritty.settings.cursor = { style = "Beam"; };
    programs.alacritty.settings.key_bindings = [  { key = "N"; mods = "Control"; action = "SpawnNewInstance"; }
                                                  { key = "W"; mods = "Control|Shift"; action = "Quit"; } ];

}
