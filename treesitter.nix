{ config, ... }: {

    programs.nixvim.plugins.treesitter = { 
      enable = true;
      #indent = false;
      #folding = false;
      nixvimInjections = true;
      nixGrammars = true;
      grammarPackages = with config.programs.nixvim.plugins.treesitter.package.builtGrammars; [
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
          vim
          regex
  ];

      moduleConfig.highlight = {
        additional_vim_regex_highlighting = [ "markdown" ];
        enable = true;
  };
};

    programs.nixvim.plugins.treesitter-refactor = { 
      enable = true;
      highlightDefinitions.enable = true;

  };
}
