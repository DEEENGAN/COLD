{ config, ... }: {

    programs.nixvim.plugins.treesitter.nixvimInjections = true;
    programs.nixvim.plugins.treesitter.nixGrammars = true;
    programs.nixvim.plugins.treesitter.ensureInstalled = "nix" "norg";
    programs.nixvim.plugins.treesitter.enable = true;
    programs.nixvim.plugins.treesitter.grammarPackages = with config.programs.nixvim.plugins.treesitter.package.builtGrammars; [
        bash
        css
        html
        markdown
        markdown_inline
        nix
        python
];



    #programs.nixvim.plugins.treesitter.indent = true;
    #programs.nixvim.plugins.treesitter.folding = true;
    programs.nixvim.plugins.treesitter-refactor.highlightDefinitions.enable = true;
    programs.nixvim.plugins.treesitter-refactor.enable = true;

}
