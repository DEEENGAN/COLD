{ ... }: {

  # KEYS, SPACEBAR " "
      programs.nixvim.globals = {
        mapleader = " ";
        maplocalleader = " ";
};

  # BASIC
      programs.nixvim.keymaps = [
        {
          mode = "n";
          key = "<leader><leader>";
          action = "<CMD>:bn<CR>";
      }
        {
          mode = "n";
          key = "<leader>bd";
          action = "<CMD>:bd<CR>";
      }
        {
          mode = "n";
          key = "<leader>bp";
          action = "<CMD>:bp<CR>";
      }
        {
          mode = "n";
          key = "<leader>wc";
          action = "g<C-g>";
      }
        {
          mode = "n";
          key = "<leader>nh";
          action = "<CMD>:noh<CR>"; }
        {
          mode = "n";
          key = "<leader>wa";
          action = "<CMD>:wa<CR>";
      }
        {
          mode = "n";
          key = "<leader>wq";
          action = "<CMD>:wq<CR>";
      }
        {
          mode = "v";
          key = "<S-Y>";
          action = "\"+y";
      }

  # FORMATTING
        {
          mode = "n";
          key = "<leader>cs";
          action = ":%!pandoc --to=commonmark-smart";
      }
        {
          mode = "v";
          key = "<leader>cs";
          action = ":%!pandoc --to=commonmark-smart";
      }
        {
          mode = "n";
          key = "<leader>dx";
          action = ":!pandoc -s % --output ~/.docx";
      }
        {
          mode = "v";
          key = "<leader>sn";
          action = ":sort n";
      }
        {
          mode = "v";
          key = "<leader>st";
          action = ":sort";
      }
        {
          mode = "v";
          key = "<leader>tb";
          action = ":'<,'>!pandoc -t commonmark_x";
      }

  # GIT
        {
          mode = "i";
          key = "<rf";
          action = "refactor():";
      }
        {
          mode = "i";
          key = "<fx";
          action = "fix():";
      }
        {
          mode = "i";
          key = "<ft";
          action = "feat():";
      }

  # SPLITS
        {
          mode = "n";
          key = "<leader>vs";
          action = "<CMD>:vsplit<CR>";
      }
        {
          mode = "n";
          key = "<leader>oo";
          action = "<CMD>:only<CR>";
      }

  # REPOS
        {
          mode = "n";
          key = "<leader>gp";
          action = "<CMD>:Git pull origin main<CR>";
      }
        {
          mode = "n";
          key = "<leader>ga";
          action = "<CMD>:Git add --all<CR>";
      }
        {
          mode = "n";
          key = "<leader>gc";
          action = "<CMD>:Git commit<CR>";
      }
        {
          mode = "n";
          key = "<leader>gh";
          action = "<CMD>:Git push origin main<CR>";
      }
        {
          mode = "n";
          key = "<leader>g2";
          action = "<CMD>:Git push clone main<CR>";
      }
        {
          mode = "n";
          key = "<leader>gs";
          action = "<CMD>:Git<CR>";
      }
        {
          mode = "n";
          key = "<leader>gl";
          action = "<CMD>:Git log<CR>";
      }

  # SEARCHES
    {
      mode = "n";
      key = "<leader>a1";
      action = "<CMD>/ä<CR>";
  }
    {
      mode = "n";
      key = "<leader>a2";
      action = "<CMD>/Ä<CR>";
  }
    {
      mode = "n";
      key = "<leader>o1";
      action = "<CMD>/ö<CR>";
  }
    {
      mode = "n";
      key = "<leader>o2";
      action = "<CMD>/Ö<CR>";
  }
    {
      mode = "n";
      key = "<leader>u1";
      action = "<CMD>/ü<CR>";
  }
    {
      mode = "n";
      key = "<leader>u2";
      action = "<CMD>/Ü<CR>";
  }

  # REPLACEMENTS
    #EN
    #DE
      {
        mode = "i";
        key = "s|";
        action = "ß";
    }
      {
        mode = "i";
        key = "S|";
        action = "ẞ";
    }
      {
        mode = "i";
        key = "a|";
        action = "ä";
    }
      {
        mode = "i";
        key = "A|";
        action = "Ä";
    }
      {
        mode = "i";
        key = "o|";
        action = "ö";
    }
      {
        mode = "i";
        key = "O|";
        action = "Ö";
    }
      {
        mode = "i";
        key = "u|";
        action = "ü";
    }
      {
        mode = "i";
        key = "U|";
        action = "Ü";
    }
      {
        mode = "i";
        key = ",,";
        action = "„";
    }
    # ZH
      {
        mode = "i";
        key = "n~";
        action = "ñ";
    }
      {
        mode = "i";
        key = "N~";
        action = "Ñ";
    }

    # HTML, BACKSLASH

      {
        mode = "i";
        key = "!hf";
        action = "<span class=\"body-text-link-pink\"><a href=\"LINK.html\">TITLE</a></span>";
    }
      {
        mode = "i";
        key = "!sp";
        action = "&nbsp;&nbsp;&nbsp;";
    }

  # SESSIONS
      {
        mode = "n";
        key = "<leader>sc";
        action = "<CMD>:source ~/PITH/N6949URA.vim<CR>";
    }
      {
        mode = "n";
        key = "<leader>mk";
        action = "<CMD>:mksession! ~/PITH/N6949URA.vim<CR>";
    }

  # TELESCOPE
      {
        mode = "n";
        key = "<leader>km";
        action = "<CMD>Telescope keymaps<CR>";
    }
      {
        mode = "n";
        key = "<leader>ss";
        action = "<CMD>Telescope spell_suggest<CR>";
    }
      {
        mode = "n";
        key = "<leader>tf";
        action = "<CMD>Telescope find_files disable_devicons=true search_dirs=~/PITH/,~/PITH/.zk/,~/COLD/,~/SITE/,~/.config/nvim/syntax<CR>";
    }
      {
        mode = "n";
        key = "<leader>tg";
        action = "<CMD>Telescope grep_string search_dirs=~/PITH/,~/PITH/.zk/,~/COLD/,~/SITE/,~/.config/nvim/syntax<CR>";
    }
      {
        mode = "n";
        key = "<leader>tp";
        action = "<CMD>Telescope grep_string type_filter=\"*#SPEECH*\" search_dirs=~/PITH/<CR>";
    }
      {
        mode = "n";
        key = "<leader>th";
        action = "<CMD>Telescope highlights<CR>";
    }
      {
        mode = "n";
        key = "<leader>to";
        action = "<CMD>Telescope oldfiles<CR>";
    }
      {
        mode = "n";
        key = "<leader>tr";
        action = "<CMD>Telescope registers<CR>";
    }
      {
        mode = "n";
        key = "<leader>tz";
        action = "<CMD>Telescope current_buffer_fuzzy_find<CR>";
    }

  # EXTENSIONS
    #FILE BROWSER
      
      {
        mode = "n";
        key = "<leader>fb";
        action = "<CMD>Telescope file_browser path=%:p:h<CR>";
    }

    ];

        programs.nixvim.maps = {

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
            visual."<leader>zl" = ":ZkInsertLinkAtSelection";

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
