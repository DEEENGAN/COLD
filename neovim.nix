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
          ./auto-save.nix
          ./autocmds.nix
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
          ./mini.nix # cursorword, session, starter
        #./auto-session.nix
        #./cursorline.nix
        #./noice.nix
        #./notify.nix
];

    # anything else
        programs.nixvim.extraConfigLua = ''

  '';
}
