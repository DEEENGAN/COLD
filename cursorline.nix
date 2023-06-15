{ ... }: {

  programs.nixvim.plugins.cursorline = {
      enable = true;

        cursorline = {
          enable = false;
    };
      
        cursorword = {
          enable = true;
          hl = { bold = true; italic = true; underline = false; fg = "#C94234"; bg = "NONE"; };

    };
  };
}
