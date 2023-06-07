{ ... }: {

    programs.nixvim.plugins.lsp.enable = true;
    programs.nixvim.plugins.lsp.servers = { nil_ls.enable = true; };

}
