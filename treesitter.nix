{ config, ... }: {

    programs.nixvim.plugins.treesitter.enable = true;
    programs.nixvim.plugins.treesitter-refactor.highlightDefinitions.enable = true;
    programs.nixvim.plugins.treesitter-refactor.enable = true;


      # markdown
        programs.nixvim.plugins.treesitter.moduleConfig.highlight.additional_vim_regex_highlighting = [ "markdown" ];
        programs.nixvim.plugins.treesitter.moduleConfig.highlight.enable = true;

      # grammars
        programs.nixvim.plugins.treesitter.nixvimInjections = true;
        programs.nixvim.plugins.treesitter.nixGrammars = true;
        programs.nixvim.plugins.treesitter.grammarPackages = with config.programs.nixvim.plugins.treesitter.package.builtGrammars; [
            bash
            comment
            css
            git_config
            git_rebase
            gitattributes
            gitcommit
            gitignore
            html
            lua
            luadoc
            luap
            markdown
            markdown_inline
            nix
            python
    ];



    #programs.nixvim.plugins.treesitter.indent = true;
    #programs.nixvim.plugins.treesitter.folding = true;


}
