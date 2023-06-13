{ ... }: {

    # keys, spacebar " "
      programs.nixvim.globals = {
        mapleader = " ";
        maplocalleader = " ";
};

    # basic
        programs.nixvim.maps = {
          normal."<leader><leader>" = "<CMD>:bn<CR>";
          normal."<leader>bp" = "<CMD>:bp<CR>";
          normal."<leader>bd" = "<CMD>:bd<CR>";
          normal."<leader>gg" = "<CMD>:g<C-g><CR>";
          normal."<leader>wa" = "<CMD>:wa<CR>";
          normal."<leader>wq" = "<CMD>:wq<CR>";
          normal."<leader>nh" = "<CMD>:noh<CR>";
          normal."ww" = "<CMD>:silent w<CR>";

      # expand
          insert."!lk" = "[link](https://)";

      # formatting
          normal."<leader>dx" = ":!pandoc -s commonmark % --output ~/.docx";
          normal."<leader>ra" = ":%s/'/’/gc";
          normal."<leader>sm" = ":%!pandoc --to=commonmark-smart";

      # formatting && publishing
          visual."<leader>tb" = ":'<,'>!pandoc -t commonmark_x<CR>";

      # git
          # edits
              insert."<bc" = "BREAKING CHANGE:";
              insert."<rf" ="refactor():";
              insert."<x" = "fix():";
              insert."<f" = "feat():";

          # repos
              normal."<leader>gl" = "<CMD>:Git pull origin main<CR>";
              normal."<leader>ga" = "<CMD>:Git add --all<CR>";
              normal."<leader>gc" = "<CMD>:Git commit<CR>";
              normal."<leader>gh" = "<CMD>:Git push origin main<CR>";
              normal."<leader>gs" = "<CMD>:Git<CR>";

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

      # Obession
          normal."<leader>o1" = "<CMD>Obsession!<CR>";
          normal."<leader>ob" = "<CMD>Obsession ~/PITH/ob<CR>";
          normal."<leader>sc" = "<CMD>:source ~/PITH/ob<CR>";

      # Telescope
          normal."<leader>cm" = "<CMD>Telescope commands<CR>";
          normal."<leader>km" = "<CMD>Telescope keymaps<CR>";
          normal."<leader>sp" = "<CMD>Telescope spell_suggest<CR>";
          normal."<leader>tb" = "<CMD>Telescope buffers<CR>";
          normal."<leader>tf" = "<CMD>Telescope find_files search_dirs=~/PITH/,~/PITH/.zk/,~/COLD/,~/.config/<CR>";
          normal."<leader>tg" = "<CMD>Telescope live_grep search_dirs=~/PITH/,~/PITH/.zk/,~/COLD/,~/.config/<CR>";
          normal."<leader>th" = "<CMD>Telescope highlights<CR>";
          normal."<leader>to" = "<CMD>Telescope oldfiles<CR>";
      
      # Todo
          normal."<leader>td" = "<CMD>TodoTelescope<CR>";

      # Undotree
          normal."<leader>dt" = "<CMD>:UndotreeToggle<CR>";

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
                normal."<leader>ia" = "<CMD>ZkNew { dir = '784', group = 'w2i', template = '9au.md', title = vim.fn.input('Title: '), content = vim.fn.input('Content: ') }<CR>";
                normal."<leader>dy" = "<CMD>ZkNew { dir = 'journal/daily/', group = 'daily', template = 'daily.md' }<CR>";

        # NewFromContentSelection

        # NewFromTitleSelection

        # Notes
            normal."<leader>zn" = "<CMD>ZkNotes<CR>";
            normal."<leader>zm" = "<CMD>ZkNotes { sort = { 'modified' }, orphan = true }<CR>";
            normal."<leader>zw" = "<CMD>ZkNotes { sort = { 'word-count' } }<CR>";
            normal."<leader>zf" = "<CMD>ZkNotes { matchStrategy = 'fts', match = { vim.fn.input('fts: ') } }<CR>";
            normal."<leader>ze" = "<CMD>ZkNotes { matchStrategy = 'exact', match = { vim.fn.input('exact: ') } }<CR>";
            normal."<leader>zr" = "<CMD>ZkNotes { matchStrategy = 're', match = { vim.fn.input('re: ') } }<CR>";

        # Tags
            normal."<leader>zt" = "<CMD>ZkTags<CR>";

  };
}
