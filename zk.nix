{ ... }:{

    programs.nixvim.plugins.zk.enable = true;
    programs.nixvim.plugins.zk.picker = "telescope";
    programs.nixvim.plugins.zk.lsp.config.cmd =  [ "zk" "lsp" ];
    programs.nixvim.plugins.zk.lsp.config.name =  "zk";
    programs.nixvim.plugins.zk.lsp.autoAttach.enabled = true;
    programs.nixvim.plugins.zk.lsp.autoAttach.filetypes = [ "markdown" ];

}
