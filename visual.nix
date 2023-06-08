{ ... }: {
                # colors && formatting
                    programs.nixvim.colorscheme = "default";
                    programs.nixvim.options.display = "lastline";
                    programs.nixvim.options.hlsearch = true;
                    programs.nixvim.options.linebreak = true;
                    programs.nixvim.options.syntax = "on";
                    programs.nixvim.options.conceallevel = 2;

                # status line
                    programs.nixvim.options.laststatus = 3;
                    programs.nixvim.options.statusline = "%{FugitiveStatusline()} %<%F %l/%L %p%%%r%h%m";
                    programs.nixvim.options.fillchars = "stl:─,stlnc:─";
                    programs.nixvim.highlight.statusline = { ctermfg = "blue"; };

                # number line
                    programs.nixvim.highlight.LineNr = { ctermfg = "blue"; };
                    programs.nixvim.highlight.LineNrAbove = { ctermfg = "yellow"; };
                    programs.nixvim.highlight.LineNrBelow = { ctermfg = "yellow"; };
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
