{ pkgs, ... }: {

  # OUTSIDE
      programs.nixvim.extraPlugins = with pkgs.vimPlugins; [
  ];
}
