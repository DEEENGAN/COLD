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
      mplayer
      gnupg
  ];

    programs.alacritty.enable = true;
    programs.alacritty.settings.window.opacity = 0.6;
    programs.alacritty.settings.window.decorations = "none";
    programs.alacritty.settings.font.normal.family = "Hasklig";
    

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

    programs.gpg.enable = true;
    programs.gpg.settings = { pinentry-mode = "loopback"; };

    programs.git.enable = true;
    programs.git.userName = "Dee Engan";
    programs.git.userEmail = "writing@deeengan.com";
    #programs.git.gpg.program = "gpg2";
    programs.git.extraConfig.commit.gpgsign = true;
    programs.git.extraConfig.user.signingkey = "8C0C6887!";
    programs.git.extraConfig.init.defaultBranch = "main";
    programs.git.extraConfig.pull.rebase = true;
    programs.git.extraConfig.rebase.autoStash = true;
    programs.git.extraConfig.color.ui = true;
    programs.git.ignores = [
      ".DS_Store"
  ];
    programs.git.extraConfig.filter.lfs.required = true;
    programs.git.extraConfig.filter.lfs.smudge = "git-lfs smudge -- %f";
    programs.git.extraConfig.filter.lfs.process = "git-lfs filter-process";
    programs.git.extraConfig.filter.lfs.clean = "git-lfs clean -- %f";



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
