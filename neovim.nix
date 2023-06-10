{ ... }: {

              programs.neovim.defaultEditor = true;

              programs.nixvim = {
                enable = true;
                viAlias = true;
                vimAlias = true;
            };

              imports = [

                      # general
                          ./writing.nix
                          ./visual.nix
                          ./files.nix

                      # visuals
                          ./hi

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
                          #./notify.nix
                          #./noice.nix
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
