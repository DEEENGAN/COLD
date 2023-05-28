{ config, pkgs, ... }: {

  home.username = "deeengan";
  home.homeDirectory = "/home/deeengan";
  home.stateVersion = "22.11";
  programs.home-manager.enable = true;

    #programs.git = {
    #enable = true;
    #userName = "deeengan";
    #userEmail = "writing@deeengan.com";
  #};


}
