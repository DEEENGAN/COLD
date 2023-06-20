{ ... }: {

  programs.nixvim.plugins.cursorline = {
      enable = true;

        cursorline = {
          enable = false;
    };
      
        cursorword = {
          enable = true;
          hl = { bold = false; italic = false; underline = false; strikethrough = true; fg = "#C94234"; bg = "NONE"; };

    };
  };
}
