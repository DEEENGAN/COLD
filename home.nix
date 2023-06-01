{ pkgs, nixvim, ... }: {

  home.homeDirectory = "/home/deeengan";
  home.stateVersion = "23.05";
  home.username = "deeengan";
  programs.home-manager.enable = true;
  nixpkgs.config.allowUnfree = true;

    imports = [ #./.nix
                #./.nix
                #./.nix
                #./.nix

                # aesthetics && switches
                  ./dconf.nix
                  ./gtk.nix

                # reading && writing && publishing
                  ./neovim.nix
                  ./git.nix
                  ./bat.nix
                  ./sioyek.nix

                # terminal
                  ./fish.nix
                  ./alacritty.nix
                  ./starship.nix
                
                # utilities 
                  ./firefox.nix
                  ./gpg.nix
              ];

    home.packages = with pkgs; [
	    anki-bin
	    pinentry
	    unzip
	    wl-clipboard
      borgbackup
      mplayer
  ];
}
