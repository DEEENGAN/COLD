{ pkgs, ... }: {

                # options
                    #programs.nixvim.plugins.neorg.enable = true;
                    #programs.nixvim.plugins.neorg.modules = {
                    #   "core.defaults" = { };
                    #   "core.concealer" = { };
                    #   "core.dirman".config.workspaces.notes = "~/notes";
             #};

                    programs.nixvim.plugins.treesitter.enable = true;
                    #programs.nixvim.plugins.treesitter.folding = true;
                    #programs.nixvim.plugins.treesitter.indent = true;
                    #programs.nixvim.plugins.treesitter-refactor.enable = true;
                    #programs.nixvim.plugins.treesitter-refactor.highlightDefinitions.enable = true;
                    programs.nixvim.plugins.treesitter.ensureInstalled = "all";
                    programs.nixvim.plugins.treesitter.nixGrammars = true;
                    programs.nixvim.plugins.treesitter.nixvimInjections = true;

                    programs.nixvim.plugins.lsp.enable = true;
                    programs.nixvim.plugins.lsp.servers = { nil_ls.enable = true; };

                    programs.nixvim.plugins.undotree.enable = true;

                    programs.nixvim.plugins.telescope.enable = true;

                    programs.nixvim.plugins.indent-blankline.enable = true;
                    programs.nixvim.plugins.auto-save.enable = true;

                # no options
                    programs.nixvim.plugins.fugitive.enable = true;

                # outside
                    programs.nixvim.extraPlugins = with pkgs.vimPlugins; [
                            vim_current_word
              ];

}
