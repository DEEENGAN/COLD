{ pkgs, inputs, ... }: {

  home.homeDirectory = "/home/deeengan";
  home.stateVersion = "22.11";
  home.username = "deeengan";
  programs.home-manager.enable = true;
  nixpkgs.config.allowUnfree = true;

    imports = [
                #./.nix
                #./.nix
                #./.nix
                #./.nix
                #./firefox.nix
                #./neovim.nix
                ./alacritty.nix
                ./bat.nix
                ./dconf.nix
                ./fish.nix
                ./git.nix
                ./gpg.nix
                ./gtk.nix
                ./starship.nix
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
