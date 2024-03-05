{ ... }: {

  programs.nixvim.plugins.fzf-lua = {
    enable = true;
    iconsEnabled = false;
    settings = {
      winopts = {
        preview = {
          layout = "reverse";
          vertical = "down:55%";
          scrollbar = false;

        };
      };
    };
  };
}
