{ ... }: {
                # colors && formatting
                    programs.nixvim.colorscheme = "default";
                    programs.nixvim.options.display = "lastline";
                    programs.nixvim.options.hlsearch = true;
                    programs.nixvim.options.linebreak = true;
                    programs.nixvim.options.syntax = "on";
                    programs.nixvim.options.conceallevel = 2;
                    programs.nixvim.options.termguicolors = true;

                # status line
                    programs.nixvim.options.laststatus = 3;
                    programs.nixvim.options.statusline = "%{FugitiveStatusline()} %<%F %l/%L %p%%%r%h%m {toupper(v:mode)}";
                    programs.nixvim.options.fillchars = "stl:─,stlnc:─";
                    programs.nixvim.highlight.statusline = { fg = "#E0D561"; bg = "NONE"; };

                # broadest && most general
                    programs.nixvim.highlight.Title = { fg = "#FF645A"; bg = "NONE"; };
                    programs.nixvim.highlight.Visual = { fg = "DarkGrey"; bg = "NONE"; };
                    programs.nixvim.highlight.Identifier = { fg = "#84F088"; bg = "NONE"; };
                    programs.nixvim.highlight.Statement = { fg = "#FF9269"; bg = "NONE"; };
                    programs.nixvim.highlight.Scrollbar = { fg = "NONE"; bg = "NONE"; };
                    programs.nixvim.highlight.Search = { fg = "DarkGrey"; bg = "NONE"; };

                # menus
                    programs.nixvim.highlight.Pmenu = { fg = "NONE"; bg = "NONE"; };
                    programs.nixvim.highlight.PmenuExtraSel = { fg = "NONE"; bg = "NONE"; };
                    programs.nixvim.highlight.PmenuKindSel = { fg = "NONE"; bg = "NONE"; };
                    programs.nixvim.highlight.PmenuSbar = { fg = "NONE"; bg = "NONE"; };
                    programs.nixvim.highlight.PmenuSel = { fg = "NONE"; bg = "NONE"; };
                    programs.nixvim.highlight.PmenuThumb = { fg = "NONE"; bg = "NONE"; };

                # popups
                    programs.nixvim.highlight.NoicePopupmenuSelected = { fg = "NONE"; bg = "NONE"; };
                    programs.nixvim.highlight.NoicePopupmenu = { fg = "NONE"; bg = "NONE"; };
                    programs.nixvim.highlight.NoiceFormatConfirmDefault = { fg = "NONE"; bg = "NONE"; };
                    programs.nixvim.highlight.NoiceFormatConfirm = { fg = "NONE"; bg = "NONE"; };
                    programs.nixvim.highlight.FloatShadow = { fg = "NONE"; bg = "NONE"; };
                    programs.nixvim.highlight.FloatShadowThrough = { fg = "NONE"; bg = "NONE"; };

                # number line && signs
                    programs.nixvim.highlight.LineNr = { fg = "NONE"; bg = "NONE"; };
                    programs.nixvim.highlight.LineNrAbove = { fg = "NONE"; bg = "NONE"; };
                    programs.nixvim.highlight.LineNrBelow = { fg = "NONE"; bg = "NONE"; };
                    programs.nixvim.highlight.SignColumn = { fg = "NONE"; bg = "NONE"; };
                    #programs.nixvim.highlight.keyword = "feminine";
                    #programs.nixvim.highlight.link.feminine = { fg = "Yellow"; bg = "Black"; };
                    programs.nixvim.options.relativenumber = true;

                # non-breaking spaces, tab spaces, the nbsp between typed characters etc. also, the indent lines
                    programs.nixvim.highlight.SpecialKey = { ctermfg = "blue"; };
                    programs.nixvim.highlight.NonText = { ctermfg = "blue"; };
                
                # tabs && spaces
                      programs.nixvim.options.expandtab = true;
                      programs.nixvim.options.list = true;
                      programs.nixvim.options.listchars = "tab:>.,trail:.,extends:#,nbsp:.";
                      programs.nixvim.options.shiftwidth = 2;
                      programs.nixvim.options.smartindent = true;
                      programs.nixvim.options.smarttab = true;
                      programs.nixvim.options.softtabstop = 0;
                      programs.nixvim.options.tabstop = 2;
                  
                # search
                      programs.nixvim.options.incsearch = true;
                      programs.nixvim.options.ignorecase = true;
                      programs.nixvim.options.wildmenu = true;
                      programs.nixvim.options.wildmode = "longest:full,full";
                      programs.nixvim.options.scrolloff = 15;
}
