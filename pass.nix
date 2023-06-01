{ pkgs, config, ... }: {

  programs.password-store.enable = true;
    programs.password-store.package = pkgs.pass.withExtensions (exts: with exts; [ pass-update pass-otp ]);
    programs.password-store.settings = { PASSWORD_STORE_DIR = "${config.home.homeDirectory}/.password-store/";

  };
}
