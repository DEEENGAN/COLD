{ ... }:{

    programs.nixvim.plugins.zk.enable = true;
    programs.nixvim.plugins.zk.picker = "telescope";
    programs.nixvim.plugins.zk.lsp.config.cmd =  [ "zk" "lsp" ];
    programs.nixvim.plugins.zk.lsp.config.name =  "zk";
    programs.nixvim.plugins.zk.lsp.autoAttach.enabled = true;
    programs.nixvim.plugins.zk.lsp.autoAttach.filetypes = [ "markdown" ];

      # zk maps
        # search
          # TODO: zk list --format '{{word-count}}\t{{title}}' --sort word-count --limit 20
            programs.nixvim.maps.normal."<leader>zl" = "<CMD>ZkLinks<CR>";
            programs.nixvim.maps.normal."<leader>zt" = "<CMD>ZkTags<CR>";
            programs.nixvim.maps.normal."<leader>zn" = "<CMD>ZkNotes<CR>";

        # ZkNew -- set the fish path to ~/DIR/, no ~/DIR/.zk as it will be included in dir = below
            programs.nixvim.maps.normal."<leader><c-n>" = "<CMD>ZkNew { title = vim.fn.input('Title: '), content = vim.fn.input('Content: ') }<CR>";
            programs.nixvim.maps.normal."<leader>zo" = "<CMD>ZkNew { dir = 'journal/daily/', group = 'daily' }<CR>";

        # ZkNotes
            programs.nixvim.maps.normal."<leader>zm" = "<CMD>ZkNotes { sort = { 'modified' } }<CR>";
            programs.nixvim.maps.normal."<leader>zw" = "<CMD>ZkNotes { sort = { 'word-count' } }<CR>";
            programs.nixvim.maps.normal."<leader>zs" = "<CMD>ZkNotes { sort = { 'modified' }, match = { vim.fn.input('Search: ') } }<CR>";
}
