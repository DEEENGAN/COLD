{ ... }:{
    
    programs.nixvim.plugins.zk = {
      enable = true;
      picker = "telescope";
      lsp.config.cmd =  [ "zk" "lsp" ];
      lsp.config.name =  "zk";
      lsp.autoAttach.enabled = true;
      lsp.autoAttach.filetypes = [ "markdown" ];

  };
}
