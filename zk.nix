{ ... }:{

    programs.nixvim.plugins.zk.enable = true;
    programs.nixvim.plugins.zk.picker = "telescope";
    programs.nixvim.plugins.zk.lsp.config.cmd =  [ "zk" "lsp" ];
    programs.nixvim.plugins.zk.lsp.config.name =  "zk";
    programs.nixvim.plugins.zk.lsp.autoAttach.enabled = true;
    programs.nixvim.plugins.zk.lsp.autoAttach.filetypes = [ "markdown" ];

        # zk maps
            programs.nixvim.maps.normal."<leader>tl" = "<CMD>ZkLinks<CR>";
            programs.nixvim.maps.normal."<leader>tt" = "<CMD>ZkTags<CR>";
            programs.nixvim.maps.normal."<leader>tn" = "<CMD>ZkNotes<CR>";

            programs.nixvim.maps.normal."<leader>zn" = "<CMD>ZkNew { title = vim.fn.input('Title: '), content = vim.fn.input('Content: ') }<CR>";
            programs.nixvim.maps.normal."<leader>zc" = "<CMD>ZkNew { content = vim.fn.input('Content: ') }<CR>";
            programs.nixvim.maps.normal."<leader>zm" = "<CMD>ZkNotes { sort = { 'modified' } }<CR>";
            programs.nixvim.maps.normal."<leader>zs" = "<CMD>ZkNotes { sort = { 'modified' }, match = { vim.fn.input('Search: ') } }<CR>";
}
