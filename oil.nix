{ ... }: {

  programs.nixvim.plugins.oil = { 
    enable = true;
    defaultFileExplorer = true;
    winOptions = {
      cursorcolumn = true;
      signcolumn = "no";

    };
  };
}
