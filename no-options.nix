{ pkgs, ... }: {

                # no options
                    programs.nixvim.plugins.fugitive.enable = true;

                # outside
                    programs.nixvim.extraPlugins = with pkgs.vimPlugins; [
                            vim_current_word
                            dressing-nvim
              ];

}
