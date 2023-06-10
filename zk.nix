{ ... }:{

    programs.nixvim.plugins.zk.enable = true;
    programs.nixvim.plugins.zk.picker = "telescope";
    programs.nixvim.plugins.zk.lsp.config.cmd =  [ "zk" "lsp" ];
    programs.nixvim.plugins.zk.lsp.config.name =  "zk";
    programs.nixvim.plugins.zk.lsp.autoAttach.enabled = true;
    programs.nixvim.plugins.zk.lsp.autoAttach.filetypes = [ "markdown" ];

      # zk

        # BackLinks
        # Cd
        # Index

        # InsertLink
            programs.nixvim.maps.normal."<leader>ll" = "<CMD>ZkInsertLink { match = { vim.fn.input('Search: ')} }<CR>";

        # InsertLinkAtSelection
            programs.nixvim.maps.visual."<leader>zl" = "<CMD>'<,'>ZkInsertLinkAtSelection { matchSelected = true }<CR>";

        # Links
            programs.nixvim.maps.normal."<leader>zl" = "<CMD>ZkLinks<CR>";

        # Match

        # New
            # ZkNew -- set the fish path to ~/DIR/, no ~/DIR/.zk as it will be included in dir = below
            # this works when you are in fish shell
                programs.nixvim.maps.normal."<leader>ii" = "<CMD>ZkNew { dir = 'ideas/', group = 'ideas', title = vim.fn.input('Title: '), content = vim.fn.input('Content: ') }<CR>";
                programs.nixvim.maps.normal."<leader>br" = "<CMD>ZkNew { dir = 'folk/ber/', group = 'folk', title = vim.fn.input('Title: '), content = vim.fn.input('Content: ') }<CR>";
                programs.nixvim.maps.normal."<leader>zo" = "<CMD>ZkNew { dir = 'journal/daily/', group = 'daily' }<CR>";

        # NewFromContentSelection

        # NewFromTitleSelection

        # Notes
            programs.nixvim.maps.normal."<leader>zn" = "<CMD>ZkNotes<CR>";
            programs.nixvim.maps.normal."<leader>zm" = "<CMD>ZkNotes { sort = { 'modified' } }<CR>";
            programs.nixvim.maps.normal."<leader>zw" = "<CMD>ZkNotes { sort = { 'word-count' } }<CR>";
            programs.nixvim.maps.normal."<leader>zs" = "<CMD>ZkNotes { sort = { 'modified' }, match = { vim.fn.input('Search: ') } }<CR>";

        # Tags
            programs.nixvim.maps.normal."<leader>zt" = "<CMD>ZkTags<CR>";

}
