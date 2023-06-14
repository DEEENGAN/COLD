{ ... }: {

  programs.nixvim.plugins.indent-blankline = {
    enable = true;
    useTreesitter = true;
    useTreesitterScope = true;

  };
}
