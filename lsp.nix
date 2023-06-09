{ ... }: {

    programs.nixvim.plugins.lsp.enable = true;
    programs.nixvim.plugins.lsp.servers = {
                                            nil_ls.enable = true;
  };

      # maps
        programs.nixvim.plugins.lsp.keymaps.lspBuf.gd = "definition";
        programs.nixvim.plugins.lsp.keymaps.lspBuf.gD = "references";
        programs.nixvim.plugins.lsp.keymaps.lspBuf.K = "hover";
}
