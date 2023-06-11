{ ... }:{
    
    programs.nixvim.plugins.zk = {
      enable = true;
      picker = "telescope";
        lsp.config = {
          cmd =  [ "zk" "lsp" ];
          name =  "zk";
  };

        lsp.autoAttach = {
          enabled = true;
          filetypes = [ "markdown" ];

    };
  };
}
