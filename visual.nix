{ ... }: {

  programs.nixvim.colorscheme = "default";
  programs.nixvim.options = {

    # 'thetics
        conceallevel = 2;
        display = "lastline";
        guicursor = "n-c-v-sm:Cursor,i-ci-ve:ver33-Cursor,r-cr-o:hor33-Cursor,a:blinkwait0-blinkon2000-blinkoff0";
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
