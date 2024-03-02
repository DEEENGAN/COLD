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
          ./no-options.nix
          ./nvim-colorizer.nix
          ./quickmath.nix
          ./starter.nix
          ./telescope.nix
          ./todo-comments.nix
          ./treesitter.nix
          ./undotree.nix
          ./zk.nix
        #./fzf-lua.nix
        #./fzf-lua.nix
        #./noice.nix
        #./notify.nix
        #./sessions.nix
        #./surround.nix
        #./wilder.nix
];

    # anything else
        programs.nixvim.extraConfigLua = ''

  '';
}
