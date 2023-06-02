{ ... }: {

              programs.neovim.defaultEditor = true;
              programs.nixvim.enable = true;

              imports = [
                          ./maps.nix
                          ./visual.nix
                          ./files.nix
                          ./plugins.nix
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
          '';
}
