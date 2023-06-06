{ pkgs, ... }: {

  home.homeDirectory = "/home/deeengan";
  home.stateVersion = "23.05";
  home.username = "deeengan";
  programs.home-manager.enable = true;

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
                  ./pandoc.nix
                  ./pass.nix
              ];

    home.packages = with pkgs; [

                # language
                    rime-data

                    # nix
                        nil
                        alejandra
                        dconf2nix

                    # html && css
                        lessc
                        nodejs

                    # ink
                      inklecate

                # Telescope
                    ripgrep
                    fd

                # utilities
                    anki-bin
                    borgbackup
                    git-lfs
                    mplayer
                    pinentry
                    unzip
                    wl-clipboard
                    feh


  ];
}
