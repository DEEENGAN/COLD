{
      
  programs.git = {
    enable = true;
    ignores = [ ".zk/notebook.db" "*.db" ".DS_Store" "hardware-configuration.nix" ];
    userEmail = "writing@deeengan.com";
    userName = "Dee Engan";

      extraConfig = {
        color.ui = true;
        commit.gpgsign = true;
        init.defaultBranch = "main";
        pull.rebase = true;
        rebase.autoStash = true;
        user.signingkey = "8C0C6887!";

          filter.lfs = {
            clean = "git-lfs clean -- %f";
            process = "git-lfs filter-process";
            required = true;
            smudge = "git-lfs smudge -- %f";
      
      };
    };
  };
}
