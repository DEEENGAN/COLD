{ pkgs, ... }: {

  # outside
      programs.nixvim.extraPlugins = with pkgs.vimPlugins; [
              vim-obsession
  ];
}
