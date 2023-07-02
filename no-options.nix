{ pkgs, ... }: {

  # OUTSIDE
      programs.nixvim.extraPlugins = with pkgs.vimPlugins; [
              #vim-obsession
  ];
}
