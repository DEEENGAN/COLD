{ pkgs, ... }: {

  # outside
      programs.nixvim.extraPlugins = with pkgs.vimPlugins; [
              vim_current_word
              vim-obsession
  ];
}
