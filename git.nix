{
    #programs.git.extraConfig.gpg.program = "gpg2";
      programs.git.enable = true;
      programs.git.extraConfig.color.ui = true;
      programs.git.extraConfig.commit.gpgsign = true;
      programs.git.extraConfig.filter.lfs.clean = "git-lfs clean -- %f";
      programs.git.extraConfig.filter.lfs.process = "git-lfs filter-process";
      programs.git.extraConfig.filter.lfs.required = true;
      programs.git.extraConfig.filter.lfs.smudge = "git-lfs smudge -- %f";
      programs.git.extraConfig.init.defaultBranch = "main";
      programs.git.extraConfig.pull.rebase = true;
      programs.git.extraConfig.rebase.autoStash = true;
      programs.git.extraConfig.user.signingkey = "8C0C6887!";
      programs.git.ignores = [ ".DS_Store" "hardware-configuration.nix" ];
      programs.git.userEmail = "writing@deeengan.com";
      programs.git.userName = "Dee Engan";


}
