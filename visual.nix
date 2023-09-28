{ ... }: {

  programs.nixvim.colorscheme = "default";
  programs.nixvim.options = {

    # 'THETICS 
        conceallevel = 2;
        display = "lastline";
        linebreak = true;
        syntax = "on";
        foldmethod = "indent";


      # DESPITE TERMINAL USE, GUI OPTS MUST BE SET FOR COLORS ETC.
          guicursor = "n-c-v-sm:Cursor,i-ci-ve:ver33-Cursor,r-cr-o:hor33-Cursor,a:blinkwait0-blinkon2000-blinkoff0";
          guifont = "FantasqueSansM";
          guifontwide = "";
          guioptions = "!";
          termguicolors = true;

    # NUMBER LINE
        relativenumber = true;

    # SEARCH
        incsearch = true;
        ignorecase = true;
        hlsearch = true;
        wildmenu = true;
        wildmode = "longest:full,full";
        scrolloff = 50;

    # SESSIONS
        sessionoptions = "blank,buffers,curdir,folds,help,resize,tabpages,winpos,winsize,terminal";

    # STATUS LINE
        laststatus = 3;
        statusline = "%{FugitiveStatusline()} %<%F %{wordcount().words} %l/%L %p%%%r%h%m";
        fillchars = "stl:─,stlnc:─";

    # TABS && SPACES
        expandtab = true;
        list = true;
        listchars = "tab:>.,trail:.,extends:#,nbsp:.";
        shiftwidth = 2;
        smartindent = true;
        smarttab = true;
        softtabstop = 0;
        tabstop = 2;

  };
}
