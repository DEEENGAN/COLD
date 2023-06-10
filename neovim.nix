{ ... }: {

              programs.neovim.defaultEditor = true;
              programs.nixvim.enable = true;
              programs.nixvim.viAlias = true;
              programs.nixvim.vimAlias = true;

                # keys, spacebar for " "
                    programs.nixvim.globals.mapleader = " ";
                    programs.nixvim.globals.maplocalleader = " ";

                  # basic
                      programs.nixvim.maps.normal."<leader><leader>" = "<CMD>:bn<CR>";
                      programs.nixvim.maps.normal."<leader>bp" = "<CMD>:bp<CR>";
                      programs.nixvim.maps.normal."<leader>bd" = "<CMD>:bd<CR>";
                      programs.nixvim.maps.normal."<leader>c" = "g<C-g>";
                      programs.nixvim.maps.normal."<leader>wa" = "<CMD>:wa<CR>";
                      programs.nixvim.maps.normal."<leader>wq" = "<CMD>:wq<CR>";
                      programs.nixvim.maps.normal."ww" = "<CMD>:silent w<CR>";

              imports = [

                      # general
                          ./writing.nix
                          ./visual.nix
                          ./files.nix

                      # plugins
                          ./no-options.nix
                          ./undotree.nix
                          ./telescope.nix
                          ./lsp.nix
                          ./indent-blankline.nix
                          ./auto-save.nix
                          ./treesitter.nix
                          ./zk.nix
                          ./todo-comments.nix
                          ./notify.nix
                          ./noice.nix
                          ./nvim-colorizer.nix
            ];

            # anything else
                programs.nixvim.extraConfigLua = ''

                      local function markdown()
                        vim.cmd([[
                          augroup markdown
                            autocmd!
                            autocmd FileType markdown
                                  \ setlocal formatoptions+=aw |
                                  \ setlocal textwidth=66 |
                          augroup END
                        ]])
                      end

                      markdown()

         '';

}
