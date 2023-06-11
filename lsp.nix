{ ... }: {

    programs.nixvim.plugins.lsp = {
      enable = true;
      servers = {
        nil_ls.enable = true;
  };

      # maps
          keymaps.lspBuf = {
            gd = "definition";
            gD = "references";
            K = "hover";

    };
  };
}
