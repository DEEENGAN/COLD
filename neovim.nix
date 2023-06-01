{ pkgs, ... }: {
                  programs.nixvim = {
                    enable = true;
                  plugins.neorg.enable = true;
                  plugins.neorg.modules = {
                     "core.defaults" = { };
                     "core.norg.concealer" = { };
                     "core.dirman".config.workspaces.notes = "~/notes";
           };

                plugins.undotree.enable = true;
                plugins.fugitive.enable = true;
                plugins.telescope.enable = true;
                plugins.treesitter.enable = true;
                plugins.treesitter.nixGrammars = true;
                plugins.treesitter.ensureInstalled = "all";
                    extraPlugins = with pkgs.vimPlugins; [
                      nvim-lspconfig
                      indent-blankline-nvim
                      auto-save-nvim

          ];

            # anything else
                extraConfigLua = ''
                  require'lspconfig'.nil_ls.setup{}

                  require('telescope').setup{
                    defaults = {
                      -- ...
                    },
                    pickers = {
                      find_files = {
                        theme = "dropdown",
                      }
                    },
                    extensions = {
                      -- ...
                    }
                  }
                  
                  -- formatting
                  local function deeengan()
                    vim.cmd([[
                      augroup deeengan
                        autocmd!
                        autocmd FileType deeengan
                              \ setlocal formatoptions+=aw |
                              \ setlocal textwidth=66
                      augroup END
                    ]])
                  end

                  deeengan()

            '';

            # files
                options.filetype = "on";
                options.spelllang = "en_us,de_de,cjk";
                options.spell = true;
                options.autoread = true;
                  
                  # ftplugin, custom files
                      files."ftdetect/deeengan.lua".autoCmd = [
                  {
                        event = [ "BufRead" "BufNewFile" ];
                        pattern = [ "*.dea" ];
                        command = "set ft=deeengan";
              }
            ];

              # undo
                  options.undofile = false;

              # swap
                  options.swapfile = false;

              # backup
                  options.backup = true;
                  options.backupdir = "/home/deeengan/.cache/nvim-backups/";
                  options.backupcopy = "yes";
                  options.writebackup = true;

            # keys, spacebar for " "
                globals.mapleader = " ";
                globals.maplocalleader = " ";

                  maps.normal = {
                      
                    # basic
                        "<leader><leader>" = "<CMD>:bn<CR>";
                        "<leader>bp" = "<CMD>:bp<CR>";
                        "<leader>bd" = "<CMD>:bd<CR>";
                        "<leader>c" = "g<C-g>";
                        "<leader>dt" = "<CMD>:UndotreeToggle<CR>";
                        "<leader>wa" = "<CMD>:wa<CR>";
                        "<leader>wq" = "<CMD>:wq<CR>";
                        "ww" = "<CMD>:w<CR>";

                    # Telescope commands
                        "<leader>tb" = "<CMD>Telescope buffers<CR>";
                        "<leader>tc" = "<CMD>Telescope find_files search_dirs=~/.config/<CR>";
                        "<leader>tf" = "<CMD>Telescope find_files search_dirs=~/<CR>";
                        "<leader>tg" = "<CMD>Telescope live_grep search_dirs=~/<CR>";

                    # formatting
                        "<leader>dx" = ":!pandoc -s commonmark % --output ~/.docx";
                        "<leader>ra" = ":%s/'/’/gc";
                        "<leader>sm" = ":%!pandoc --to=commonmark-smart";

                    # git
                        "<leader>gl" = "<CMD>:G pull origin main<CR>";
                        "<leader>ga" = "<CMD>:G add --all<CR>";
                        "<leader>gc" = "<CMD>:G commit<CR>";
                        "<leader>gh" = "<CMD>:G push origin main<CR>";
                        "<leader>gs" = "<CMD>:G status<CR>";
                        # "<leader>ph" = ":G pull | G add --all | G commit -am | G push";
          };

                maps.visual = {
                  "<leader>tb" = ":'<,'>!pandoc -t commonmark_x<CR>";
          };

                maps.insert = {

                  # git
                    "<bc" = "BREAKING CHANGE:";
                    "<rf" ="refactor():";
                    "<fx" = "fix():";
                    "<f" = "feat():";

                  # language
                      "s|" = "ß";
                      "S|" = "ẞ";
                      "a|" = "ä";
                      "A|" = "Ä";
                      "o|" = "ö";
                      "O|" = "Ö";
                      "u|" = "ü";
                      "U|" = "Ü";
                      ",," = "„";
                      ",|" = "“";
          };

              # tabs && spaces
                  options.expandtab = true;
                  options.list = true;
                  options.listchars = "tab:>.,trail:.,extends:#,nbsp:.";
                  options.shiftwidth = 2;
                  options.smartindent = true;
                  options.smarttab = true;
                  options.softtabstop = 0;
                  options.tabstop = 2;
              
              # search
                  options.incsearch = true;
                  options.ignorecase = true;
                  options.wildmenu = true;
                  options.wildmode = "longest:full,full";
                  options.scrolloff = 9;

              # visual
                
                # colors
                    colorscheme = "default";
                    options.display = "lastline";
                    options.hlsearch = true;
                    options.linebreak = true;
                    options.syntax = "on";
                
                # status line
                    options.laststatus = 3;
                    options.statusline = "%{FugitiveStatusline()} %<%F %l/%L %p%%%r%h%m";
                    options.fillchars = "stl:─,stlnc:─";
                    highlight.statusline = { ctermfg = "blue"; };

                # number line
                    highlight.LineNr = { ctermfg = "blue"; };
                    highlight.LineNrAbove = { ctermfg = "yellow"; };
                    highlight.LineNrBelow = { ctermfg = "yellow"; };
                    options.relativenumber = true;

                # non-breaking spaces, tab spaces, the nbsp between typed characters etc. also, the indent lines
                    highlight.SpecialKey = { ctermfg = "blue"; };
                    highlight.NonText = { ctermfg = "blue"; };
  };
}
