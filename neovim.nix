{ ... }: {

  programs.neovim.defaultEditor = true;

  programs.nixvim = {
    enable = true;
    viAlias = true;
    vimAlias = true;
};

  imports = [

    # general
        ./files.nix
        ./visual.nix
        ./writing.nix


    # visuals
        ./hi

    # plugins
        #./noice.nix
        #./notify.nix
          ./autocmds.nix
          ./auto-save.nix
        #./cursorline.nix
          ./fugitive.nix
          ./indent-blankline.nix
          ./lsp.nix
          ./no-options.nix
          ./nvim-colorizer.nix
          ./telescope.nix
          ./todo-comments.nix
          ./treesitter.nix
          ./undotree.nix
          ./zk.nix
];

    # anything else
        programs.nixvim.extraConfigLua = ''

  '';
}
