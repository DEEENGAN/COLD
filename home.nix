{ pkgs, ... }: {

  home.homeDirectory = "/home/deeengan";
  home.stateVersion = "23.05";
  home.username = "deeengan";
  programs.home-manager.enable = true;

    imports = [

                # aesthetics && switches
                  ./dconf.nix
                  ./gtk.nix

                # reading && writing && publishing
                  ./neovim.nix
                  ./git.nix
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
                    zk

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
                    borgbackup
                    git-lfs
                    pinentry
                    unzip
                    wl-clipboard

                    # audio
                        mplayer
                        ffmpeg

                    # learning
                        anki-bin

                    # visual
                        tree
                        feh

  ];
}
