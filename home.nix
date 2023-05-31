{ pkgs, nixvim, ... }: {

  home.homeDirectory = "/home/deeengan";
  home.stateVersion = "22.11";
  home.username = "deeengan";
  programs.home-manager.enable = true;

    imports = [ ./git.nix
                ./alacritty.nix
                ./gpg.nix
                ./gtk.nix
                ./neovim.nix
                ./dconf.nix
            ];

    home.packages = with pkgs; [
	    anki-bin
	    pinentry
	    unzip
	    vim
	    wl-clipboard
      borgbackup
      mplayer
      gnupg
      firefox
  ];


}
