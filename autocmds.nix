{ ... }: {

  programs.nixvim.autoCmd = [

    {
      event = "FileType";
      pattern = [
        "markdown"
    ];
      command = "setlocal spell textwidth=66 formatoptions+=aw spelllang=en,de,cjk";
    
    }
  ];
}
