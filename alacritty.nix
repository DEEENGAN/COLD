{
    programs.alacritty.enable = true;
    programs.alacritty.settings.colors = import ./spacedust.nix;
    programs.alacritty.settings.window.opacity = 0.6;
    programs.alacritty.settings.window.decorations = "none";
    programs.alacritty.settings.window.padding = { x = 12; };
    programs.alacritty.settings.window.dynamic_padding = true;
    programs.alacritty.settings.font.normal.family = "FantasqueSansM Nerd Font";
    programs.alacritty.settings.cursor = { style = "Beam"; };
    programs.alacritty.settings.key_bindings = [  { key = "N"; mods = "Control|Shift"; action = "SpawnNewInstance"; }
                                                  { key = "W"; mods = "Control|Shift"; action = "Quit"; } ];

}
