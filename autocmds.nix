{ ... }: {

  programs.nixvim.autoCmd = [

    {
      event = "FileType";
      pattern = [
        "markdown"
        "ink"
    ];
      command = "setlocal spell textwidth=66 formatoptions+=aw spelllang=en,de,cjk";
    
    }
  ];
}
