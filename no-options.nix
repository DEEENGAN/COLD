{ pkgs, ... }: {

                # no options
                    programs.nixvim.plugins.fugitive.enable = true;

                # outside
                    programs.nixvim.extraPlugins = with pkgs.vimPlugins; [
                            vim_current_word
                            telescope-vim-bookmarks-nvim
                            vim-bookmarks
              ];

}