{ ... }: {

              programs.neovim.defaultEditor = true;
              programs.nixvim.enable = true;

              imports = [

                      # general
                          ./maps.nix
                          ./visual.nix
                          ./files.nix

                      # plugins
                          ./no-options.nix
                          ./undotree.nix
                          ./telescope.nix
                          ./lsp.nix
                          ./neorg.nix
                          ./indent-blankline.nix
                          ./auto-save.nix
                          ./treesitter.nix
                          ./zk.nix
                          ./todo-comments.nix
            ];

            # anything else
                programs.nixvim.extraConfigLua = ''

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

                  -- treesitter
                      require("nvim-treesitter.configs").setup({
                        highlight = {
                          additional_vim_regex_highlighting = { "markdown" }
                        },
                      })

          '';

}
