{ ... }: {

    # keys, spacebar for " "
      programs.nixvim.globals = {
        mapleader = " ";
        maplocalleader = " ";
};

    # basic
        programs.nixvim.maps = {
          normal."<leader><leader>" = "<CMD>:bn<CR>";
          normal."<leader>bp" = "<CMD>:bp<CR>";
          normal."<leader>bd" = "<CMD>:bd<CR>";
          normal."<leader>c" = "g<C-g>";
          normal."<leader>wa" = "<CMD>:wa<CR>";
          normal."<leader>wq" = "<CMD>:wq<CR>";
          normal."ww" = "<CMD>:silent w<CR>";
      
      # Telescope
          normal."<leader>tb" = "<CMD>Telescope buffers<CR>";
          normal."<leader>th" = "<CMD>Telescope highlights<CR>";
          normal."<leader>tf" = "<CMD>Telescope find_files search_dirs=~/PITH/,~/COLD/,~/.config/<CR>";
          normal."<leader>tg" = "<CMD>Telescope live_grep search_dirs=~/PITH/,~/COLD/,~/.config/<CR>";
          normal."<leader>to" = "<CMD>Telescope oldfiles<CR>";
          normal."<leader>sp" = "<CMD>Telescope spell_suggest<CR>";

      # formatting
          normal."<leader>dx" = ":!pandoc -s commonmark % --output ~/.docx";
          normal."<leader>ra" = ":%s/'/’/gc";
          normal."<leader>sm" = ":%!pandoc --to=commonmark-smart";
          normal."<leader>nt" = "<CMD>Notifications<CR>";

      # formatting && publishing
          visual."<leader>tb" = ":'<,'>!pandoc -t commonmark_x<CR>";

      # git
          insert."<bc" = "BREAKING CHANGE:";
          insert."<rf" ="refactor():";
          insert."<x" = "fix():";
          insert."<f" = "feat():";

      # expand
          insert."!!" = "ATTN:";
          insert."!lk" = "[link](https://)";

      # language
          insert."s|" = "ß";
          insert."S|" = "ẞ";
          insert."a|" = "ä";
          insert."A|" = "Ä";
          insert."o|" = "ö";
          insert."O|" = "Ö";
          insert."u|" = "ü";
          insert."U|" = "Ü";
          insert.",," = "„";
          insert.",|" = "“";

        # Todo
            normal."<leader>td" = "<CMD>TodoTelescope<CR>";

      # zk

        # BackLinks
        # Cd
        # Index

        # InsertLink
            normal."<leader>ll" = "<CMD>ZkInsertLink { match = { vim.fn.input('Search: ')} }<CR>";

        # InsertLinkAtSelection
            visual."<leader>zl" = ":'<,'>ZkInsertLinkAtSelection { matchSelected = true }";

        # Links
            normal."<leader>zl" = "<CMD>ZkLinks<CR>";

        # Match

        # New
            # ZkNew -- set the fish path to ~/DIR/, no ~/DIR/.zk as it will be included in dir = below
            # this works when you are in fish shell
                normal."<leader>ii" = "<CMD>ZkNew { dir = 'ideas/', group = 'ideas', title = vim.fn.input('Title: '), content = vim.fn.input('Content: ') }<CR>";
                normal."<leader>br" = "<CMD>ZkNew { dir = 'folk/ber/', group = 'folk', title = vim.fn.input('Title: '), content = vim.fn.input('Content: ') }<CR>";
                normal."<leader>zo" = "<CMD>ZkNew { dir = 'journal/daily/', group = 'daily' }<CR>";

        # NewFromContentSelection

        # NewFromTitleSelection

        # Notes
            normal."<leader>zn" = "<CMD>ZkNotes<CR>";
            normal."<leader>zm" = "<CMD>ZkNotes { sort = { 'modified' } }<CR>";
            normal."<leader>zw" = "<CMD>ZkNotes { sort = { 'word-count' } }<CR>";
            normal."<leader>zs" = "<CMD>ZkNotes { sort = { 'modified' }, match = { vim.fn.input('Search: ') } }<CR>";

        # Tags
            normal."<leader>zt" = "<CMD>ZkTags<CR>";

  };
}
