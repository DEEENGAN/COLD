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
        # visuals for the layout
          ./visual.nix
          ./writing.nix

    # visuals -- hues
          ./hi

    # plugins
          ./auto-save.nix
          ./autocmds.nix
          ./cursorword.nix
          ./fugitive.nix
          ./indent-blankline.nix
          ./lsp.nix
          ./mini.nix
          ./nvim-colorizer.nix
          ./starter.nix
          ./telescope.nix
          ./todo-comments.nix
          ./treesitter.nix
          ./undotree.nix
          ./zk.nix
        # ./no-options.nix
        #./neorg.nix
        #./fzf-lua.nix
        #./noice.nix
        #./notify.nix
        #./quickmath.nix
        #./sessions.nix
        #./surround.nix
        #./wilder.nix
];

    # anything else
        programs.nixvim.extraConfigLua = ''

  '';
}
