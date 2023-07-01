{ ... }: {

    # KEYS, SPACEBAR " "
        programs.nixvim.globals = {
          mapleader = " ";
          maplocalleader = " ";
};

    # BASIC
        programs.nixvim.maps = {
          normal."<leader><leader>" = "<CMD>:bn<CR>";
          normal."<leader>bd" = "<CMD>:bd<CR>";
          normal."<leader>bp" = "<CMD>:bp<CR>";
          normal."<leader>wc" = "<CMD>:g<C-g><CR>";
          normal."<leader>nh" = "<CMD>:noh<CR>";
          normal."<leader>wa" = "<CMD>:wa<CR>";
          normal."<leader>wq" = "<CMD>:wq<CR>";
          visual."<S-Y>" = "\"+y";

      # FORMATTING
          normal."<leader>cs" = ":%!pandoc --to=commonmark-smart";
          normal."<leader>dx" = ":!pandoc -s commonmark % --output ~/.docx";
          normal."<leader>ra" = ":%s/'/’/gc";
          visual."<leader>cs" = "!pandoc --to=commonmark-smart";
          visual."<leader>sn" = ":sort n";
          visual."<leader>st" = ":sort";
          visual."<leader>tb" = ":'<,'>!pandoc -t commonmark_x";

      # GIT
          # EDITS
              insert."<bc" = "BREAKING CHANGE:";
              insert."<rf" ="refactor():";
              insert."<x" = "fix():";
              insert."<f" = "feat():";

          # REPOS
              normal."<leader>gl" = "<CMD>:Git pull origin main<CR>";
              normal."<leader>ga" = "<CMD>:Git add --all<CR>";
              normal."<leader>gc" = "<CMD>:Git commit<CR>";
              normal."<leader>gh" = "<CMD>:Git push origin main<CR>";
              normal."<leader>g2" = "<CMD>:Git push clone main<CR>";
              normal."<leader>gs" = "<CMD>:Git<CR>";

      # LIT
          # EN

          # DE
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

          # HTML, EXAMPLE OF HOW TO BACKSLASH
              insert."!lk" = "[link](https://)";
              insert."!hf" = "<span class=\"body-text-link-pink\"><a href=\"LINK.html\">TITLE</a></span>";
              insert."!sp" = "&nbsp;&nbsp;&nbsp;";

      # OBESSION
          normal."<leader>o1" = "<CMD>Obsession!<CR>";
          normal."<leader>ob" = "<CMD>Obsession ~/PITH/N6949URA.vim<CR>";
          normal."<leader>sc" = "<CMD>:source ~/PITH/N6949URA.vim<CR>";

      # TELESCOPE
          normal."<leader>cm" = "<CMD>Telescope commands<CR>";
          normal."<leader>km" = "<CMD>Telescope keymaps<CR>";
          normal."<leader>ss" = "<CMD>Telescope spell_suggest<CR>";
          normal."<leader>tb" = "<CMD>Telescope buffers<CR>";
          normal."<leader>tf" = "<CMD>Telescope find_files disable_devicons=true search_dirs=~/PITH/,~/PITH/.zk/,~/COLD/,~/SITE/,~/.config/nvim/syntax<CR>";
          normal."<leader>tg" = "<CMD>Telescope grep_string search_dirs=~/PITH/,~/PITH/.zk/,~/COLD/,~/SITE/,~/.config/nvim/syntax<CR>";
          normal."<leader>th" = "<CMD>Telescope highlights<CR>";
          normal."<leader>to" = "<CMD>Telescope oldfiles<CR>";
          normal."<leader>tr" = "<CMD>Telescope registers<CR>";
          normal."<leader>tz" = "<CMD>Telescope current_buffer_fuzzy_find<CR>";

      # TODO
          normal."<leader>td" = "<CMD>TodoTelescope<CR>";

      # UNDOTREE
          normal."<leader>dt" = "<CMD>:UndotreeToggle<CR>";

      # ZK

        # BackLinks
            normal."<leader>zb" = "<CMD>:ZkBacklinks<CR>";

        # CD
        # INDEX

        # INSERTLINK
            normal."<leader>le" = "<CMD>ZkInsertLink { matchStrategy = 'exact', match = { vim.fn.input('Search: ')} }<CR>";
            normal."<leader>lf" = "<CMD>ZkInsertLink { matchStrategy = 'fts', match = { vim.fn.input('Search: ')} }<CR>";
            normal."<leader>ll" = "<CMD>ZkInsertLink<CR>";
            normal."<leader>lr" = "<CMD>ZkInsertLink { matchStrategy = 're', match = { vim.fn.input('Search: ')} }<CR>";

        # INSERTLINKATSELECTION
            visual."<leader>zl" = ":ZkInsertLinkAtSelection { matchSelected = true }";

        # LINKS
            normal."<leader>zl" = "<CMD>ZkLinks<CR>";

        # MATCH

        # NEW
            # ZkNew -- set the fish path to ~/DIR/, no ~/DIR/.zk as it will be included in dir = below
            # this works when you are in fish shell
                normal."<leader>ia" = "<CMD>ZkNew { dir = '/home/deeengan/PITH/', group = 'IR7I32C9', template = 'EM5EQUG8.md', title = vim.fn.input('Title: '), content = vim.fn.input('Tags: ') }<CR>";
                normal."<leader>dy" = "<CMD>ZkNew { dir = '/home/deeengan/PITH/WB3LHT7H/', group = '3DRLMKUS', template = '3DRLMKUS.md' }<CR>";

        # NEWFROMCONTENTSELECTION
            visual."<leader>lc" = ":ZkNewFromContentSelection";

        # NEWFROMTITLESELECTION
            visual."<leader>lt" = ":ZkNewFromTitleSelection";

        # NOTES
            normal."<leader>zn" = "<CMD>ZkNotes<CR>";
            normal."<leader>zo" = "<CMD>ZkNotes { sort = { 'modified' }, orphan = true }<CR>";
            normal."<leader>zw" = "<CMD>ZkNotes { sort = { 'word-count' } }<CR>";
            normal."<leader>zf" = "<CMD>ZkNotes { matchStrategy = 'fts', match = { vim.fn.input('fts: ') } }<CR>";
            normal."<leader>ze" = "<CMD>ZkNotes { matchStrategy = 'exact', match = { vim.fn.input('exact: ') } }<CR>";
            normal."<leader>zr" = "<CMD>ZkNotes { matchStrategy = 're', match = { vim.fn.input('re: ') } }<CR>";

        # TAGS
            normal."<leader>zt" = "<CMD>ZkTags<CR>";

  };
}
