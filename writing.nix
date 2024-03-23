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
          action = ":bn<CR>";
      }
        {
          mode = "n";
          key = "<leader>bd";
          action = ":bd<CR>";
      }
        {
          mode = "n";
          key = "<leader>bp";
          action = ":bp<CR>";
      }
        {
          mode = "n";
          key = "<leader>nh";
          action = ":noh<CR>"; }
        {
          mode = "n";
          key = "<leader>wa";
          action = ":wa<CR>";
      }
        {
          mode = "n";
          key = "<leader>wq";
          action = ":wq<CR>";
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
          action = ":vsplit<CR>";
      }
        {
          mode = "n";
          key = "<leader>ol";
          action = ":only<CR>";
      }
        {
          mode = "n";
          key = "<leader>cl";
          action = ":close<CR>";
      }

  # REPOS
        {
          mode = "n";
          key = "<leader>gp";
          action = ":Git pull origin main<CR>";
      }
        {
          mode = "n";
          key = "<leader>ga";
          action = ":Git add --all<CR>";
      }
        {
          mode = "n";
          key = "<leader>gc";
          action = ":Git commit<CR>";
      }
        {
          mode = "n";
          key = "<leader>gh";
          action = ":Git push origin main<CR>";
      }
        {
          mode = "n";
          key = "<leader>g2";
          action = ":Git push clone main<CR>";
      }
        {
          mode = "n";
          key = "<leader>gs";
          action = ":Git<CR>";
      }
        {
          mode = "n";
          key = "<leader>gl";
          action = ":Git log -p<CR>";
      }
        {
          mode = "n";
          key = "<leader>gi";
          action = ":Git diff HEAD<CR>";
      }

  # SEARCHES
    {
      mode = "n";
      key = "<leader>a1";
      action = ":/ä<CR>";
  }
    {
      mode = "n";
      key = "<leader>a2";
      action = ":/Ä<CR>";
  }
    {
      mode = "n";
      key = "<leader>o1";
      action = ":/ö<CR>";
  }
    {
      mode = "n";
      key = "<leader>o2";
      action = ":/Ö<CR>";
  }
    {
      mode = "n";
      key = "<leader>u1";
      action = ":/ü<CR>";
  }
    {
      mode = "n";
      key = "<leader>u2";
      action = ":/Ü<CR>";
  }

  # REPLACEMENTS
    # EN
    # DE
      {
        mode = "i";
        key = "s`";
        action = "ß";
    }
      {
        mode = "i";
        key = "S`";
        action = "ẞ";
    }
      {
        mode = "i";
        key = "a`";
        action = "ä";
    }
      {
        mode = "i";
        key = "A`";
        action = "Ä";
    }
      {
        mode = "i";
        key = "o`";
        action = "ö";
    }
      {
        mode = "i";
        key = "O`";
        action = "Ö";
    }
      {
        mode = "i";
        key = "u`";
        action = "ü";
    }
      {
        mode = "i";
        key = "U`";
        action = "Ü";
    }
      {
        mode = "i";
        key = ",,";
        action = "„";
    }
  # OE
      {
        mode = "i";
        key = "a|";
        action = "ā";
    }
      {
        mode = "i";
        key = "A|";
        action = "Ā";
    }
      {
        mode = "i";
        key = "ae)";
        action = "æ";
    }
      {
        mode = "i";
        key = "AE)";
        action = "Æ";
    }
      {
        mode = "i";
        key = "ae|";
        action = "ǣ";
    }
      {
        mode = "i";
        key = "AE|";
        action = "Ǣ";
    }
      {
        mode = "i";
        key = "p|";
        action = "þ";
    }
      {
        mode = "i";
        key = "P|";
        action = "Þ";
    }
      {
        mode = "i";
        key = "d|";
        action = "ð";
    }
      {
        mode = "i";
        key = "D|";
        action = "Ð";
    }
      {
        mode = "i";
        key = "e|";
        action = "ē";
    }
      {
        mode = "i";
        key = "E|";
        action = "Ē";
    }
      {
        mode = "i";
        key = "ea|";
        action = "ēa";
    }
      {
        mode = "i";
        key = "Ea|";
        action = "Ēa";
    }
      {
        mode = "i";
        key = "eo|";
        action = "ēo";
    }
      {
        mode = "i";
        key = "Eo|";
        action = "Ēo";
    }
      {
        mode = "i";
        key = "i|";
        action = "ī";
    }
      {
        mode = "i";
        key = "I|";
        action = "Ī";
    }
      {
        mode = "i";
        key = "ie|";
        action = "īe";
    }
      {
        mode = "i";
        key = "Ie|";
        action = "Īe";
    }
      {
        mode = "i";
        key = "io|";
        action = "īo";
    }
      {
        mode = "i";
        key = "Io|";
        action = "Īo";
    }
      {
        mode = "i";
        key = "o|";
        action = "ō";
    }
      {
        mode = "i";
        key = "O|";
        action = "Ō";
    }
      {
        mode = "i";
        key = "oe|";
        action = "ōe";
    }
      {
        mode = "i";
        key = "Oe|";
        action = "Ōe";
    }
      {
        mode = "i";
        key = "u|";
        action = "ū";
    }
      {
        mode = "i";
        key = "U|";
        action = "Ū";
    }
      {
        mode = "i";
        key = "y|";
        action = "ȳ";
    }
      {
        mode = "i";
        key = "Y|";
        action = "Ȳ";
    }
      {
        mode = "i";
        key = "c|";
        action = "ċ";
    }
      {
        mode = "i";
        key = "C|";
        action = "Ċ";
    }
      {
        mode = "i";
        key = "g|";
        action = "ġ";
    }
      {
        mode = "i";
        key = "G|";
        action = "Ġ";
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
        key = "<leader>s1";
        action = ":source ~/PITH/N6949URA.vim<CR>";
    }
      {
        mode = "n";
        key = "<leader>s2";
        action = ":source ~/PITH/7AJHBGAA.vim<CR>";
    }
      {
        mode = "n";
        key = "<leader>mk";
        action = ":mksession! ~/PITH/7AJHBGAA.vim<CR>";
    }

  # TELESCOPE
      {
        mode = "n";
        key = "<leader>km";
        action = ":Telescope keymaps<CR>";
    }
      {
        mode = "n";
        key = "<leader>tf";
        action = ":Telescope find_files disable_devicons=true search_dirs=~/PITH/,~/PITH/.zk/,~/COLD/,~/SITE/,~/.config/nvim/syntax<CR>";
    }
      {
        mode = "n";
        key = "<leader>tg";
        action = ":Telescope grep_string search_dirs=~/PITH/,~/PITH/.zk/,~/COLD/,~/SITE/,~/.config/nvim/syntax<CR>";
    }
      {
        mode = "n";
        key = "<leader>th";
        action = ":Telescope highlights<CR>";
    }
      {
        mode = "n";
        key = "<leader>to";
        action = ":Telescope oldfiles<CR>";
    }
      {
        mode = "n";
        key = "<leader>tr";
        action = ":Telescope registers<CR>";
    }
      {
        mode = "n";
        key= "<leader>tz";
        action = ":Telescope current_buffer_fuzzy_find<CR>";
    }
      {
        mode = "n";
        key = "<leader>tm";
        action = ":Telescope marks<CR>";
    }
      {
        mode = "n";
        key = "<leader>tq";
        action = ":Telescope quickfix<CR>";
    }
      {
        mode = "n";
        key = "<leader>tb";
        action = ":Telescope buffers<CR>";
    }

  # EXTENSIONS
    #FILE BROWSER
      
      #{
      #  mode = "n";
      #  key = "<leader>fb";
      #  action = ":Telescope file_browser path=%:p:h<CR>";
    #}

      {
        mode = "n";
        key = "<leader>oi";
        action = ":Oil<CR>";
    }


    #TODO
      
      {
        mode = "n";
        key = "<leader>td";
        action = ":TodoTelescope<CR>";
    }

    
    #Undotree
      {
        mode = "n";
        key = "<leader>dt";
        action = ":UndotreeToggle<CR>";
    }


    #ZK
      #Backlinks
        
      {
        mode = "n";
        key = "<leader>zb";
        action = ":ZkBacklinks<CR>";
    }

    #CD
    #Index
    #Insertlink
      
      {
        mode = "n";
        key = "<leader>le";
        action = ":ZkInsertLink { matchStrategy = 'exact', match = { vim.fn.input('Search: ')} }<CR>";
    }
      {
        mode = "n";
        key = "<leader>lf";
        action = ":ZkInsertLink { matchStrategy = 'fts', match = { vim.fn.input('Search: ')} }<CR>";
    }
      {
        mode = "n";
        key = "<leader>ll";
        action = ":ZkInsertLink<CR>";
    }
      {
        mode = "n";
        key = "<leader>lr";
        action = ":ZkInsertLink { matchStrategy = 're', match = { vim.fn.input('Search: ')} }<CR>";
    }

    #InsertLinkatSelection
      
      {
        mode = "v";
        key = "<leader>zl";
        action = ":ZkInsertLinkAtSelection<CR>";
    }

    #Links

      {
        mode = "n";
        key = "<leader>zl";
        action = ":ZkLinks<CR>";
    }

    #Match
    #New
             # ZkNew -- set the fish path to ~/DIR/, no ~/DIR/.zk as it will be included in dir = below
            # this works when you are in fish shell
     
      {
        mode = "n";
        key = "<leader>ia";
        action = ":ZkNew { dir = '/home/deeengan/PITH/', group = 'IR7I32C9', template = 'EM5EQUG8.md', title = vim.fn.input('Title: '), content = vim.fn.input('Tags: ') }<CR>";
    }
      {
        mode = "n";
        key = "<leader>dy";
        action = ":ZkNew { dir = '/home/deeengan/PITH/WB3LHT7H/', group = '3DRLMKUS', template = '3DRLMKUS.md' }<CR>";
    }

    #New From Content Selection
      
      {
        mode = "v";
        key = "<leader>lc";
        action = ":'<,'><CR>ZkNewFromContentSelection<CR>";
    }
    #New From Title Selection

       {
          mode = "v";
          key = "<leader>lt";
          action = ":ZkNewFromTitleSelection<CR>";
      }

    # Notes
      
      {
        mode = "n";
        key = "<leader>zn";
        action = ":ZkNotes<CR>";
    }
      {
        mode = "n";
        key = "<leader>zo";
        action = ":ZkNotes { sort = { 'modified' }, orphan = true }<CR>";
    }
      {
        mode = "n";
        key = "<leader>zw";
        action = ":ZkNotes { sort = { 'word-count' } }<CR>";
    }
      {
        mode = "n";
        key = "<leader>zf";
        action = ":ZkNotes { matchStrategy = 'fts', match = { vim.fn.input('fts: ') } }<CR>";
    }
      {
        mode = "n";
        key = "<leader>ze";
        action = ":ZkNotes { matchStrategy = 'exact', match = { vim.fn.input('exact: ') } }<CR>";
    }
      {
        mode = "n";
        key = "<leader>zr";
        action = ":ZkNotes { matchStrategy = 're', match = { vim.fn.input('re: ') } }<CR>";
    }

    # Tags
      
      {
        mode = "n";
        key = "<leader>zt";
        action = ":ZkTags<CR>";
    }

    ];

}
