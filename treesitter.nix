{ ... }: {

    programs.nixvim.plugins.treesitter.nixGrammars = true;
    programs.nixvim.plugins.treesitter.ensureInstalled = "nix" "norg";
    programs.nixvim.plugins.treesitter.enable = true;
    programs.nixvim.plugins.treesitter-refactor.highlightDefinitions.enable = true;
    programs.nixvim.plugins.treesitter-refactor.enable = true;
    programs.nixvim.plugins.treesitter.nixvimInjections = true;
    #programs.nixvim.plugins.treesitter.indent = true;
    #programs.nixvim.plugins.treesitter.folding = true;

}
