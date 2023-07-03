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
          ./cursorword.nix
          ./fugitive.nix
          ./indent-blankline.nix
          ./lsp.nix
          ./mini.nix
          ./no-options.nix
          ./nvim-colorizer.nix
          ./quickmath.nix
          ./starter.nix
          ./surround.nix
          ./telescope.nix
          ./todo-comments.nix
          ./treesitter.nix
          ./undotree.nix
          ./zk.nix
        #./noice.nix gpg?
        #./notify.nix
        #./sessions.nix
        #./wilder.nix
];

    # anything else
        programs.nixvim.extraConfigLua = ''

  '';
}
