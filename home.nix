{ config, pkgs, ... }: {

  home.username = "deeengan";
  home.homeDirectory = "/home/deeengan";
  home.stateVersion = "22.11";
  programs.home-manager.enable = true;

    #programs.git = {
    #enable = true;
    #userName = "Dee Engan";
    #userEmail = "writing@deeengan.com";
  #};


#[user]
#	name = Dee Engan
#	email = writing@deeengan.com
#	signingkey = 8C0C6887!
#
#[commit]
#	gpgsign = true
#
#[gpg]
#	program = gpg2
#
#[filter "lfs"]
#	clean = git-lfs clean -- %f
#	smudge = git-lfs smudge -- %f
#	process = git-lfs filter-process
#	required = true
#
#[init]
#	defaultBranch = main
#
#[color]
#  ui = auto
#[pull]
#	rebase = true
#[rebase]
#	autoStash = true
#[core]
#	excludesfile = /home/deeengan/.gitignore
}
