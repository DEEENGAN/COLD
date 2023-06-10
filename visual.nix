{ ... }: {

  programs.nixvim.colorscheme = "default";
  programs.nixvim.options = {

    # 'thetics
        conceallevel = 2;
        display = "lastline";
        guicursor = "n-c-v-sm:iCursor";
        linebreak = true;
        syntax = "on";
        termguicolors = true;

    # number line
        relativenumber = true;

    # tabs && spaces
        expandtab = true;
        list = true;
        listchars = "tab:>.,trail:.,extends:#,nbsp:.";
        shiftwidth = 2;
        smartindent = true;
        smarttab = true;
        softtabstop = 0;
        tabstop = 2;

    # search
        incsearch = true;
        ignorecase = true;
        hlsearch = true;
        wildmenu = true;
        wildmode = "longest:full,full";
        scrolloff = 15;
    
    # status line
        laststatus = 3;
        statusline = "%{FugitiveStatusline()} %<%F %l/%L %p%%%r%h%m";
        fillchars = "stl:─,stlnc:─";

  };
}
