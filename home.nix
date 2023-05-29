{ config, pkgs, ... }: {

  home.username = "deeengan";
  home.homeDirectory = "/home/deeengan";
  home.stateVersion = "22.11";
  programs.home-manager.enable = true;

    home.packages = with pkgs; [
	    anki-bin
	    pinentry
	    tilix
	    unzip
	    vim
	    wl-clipboard
      borgbackup
      git
      gnupg
      mplayer
  ];

    # tilix
        programs.bash.enableVteIntegration = true;

      services.gpg-agent.enable = true;
      services.gpg-agent.pinentryFlavor = "curses";
      services.gpg-agent.enableSshSupport = true;
      services.gpg-agent.maxCacheTtl = 28800;
      services.gpg-agent.defaultCacheTtl = 28800;
      services.gpg-agent.extraConfig = ''
        allow-loopback-pinentry
  '';

      programs.gpg = {
        enable = true;
        settings = { pinentry-mode = "loopback"; };
    };





    #programs.git.enable = true;

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
