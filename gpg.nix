{
# gpg 2 -- find to make way for it always
  home-manager.users.deeengan = {
    services.gpg-agent.enable = true;
    services.gpg-agent.pinentryFlavor = "curses";
    services.gpg-agent.enableSshSupport = true;
    services.gpg-agent.maxCacheTtl = 28800;
    services.gpg-agent.defaultCacheTtl = 28800;
    programs.gpg.enable = true;
    programs.gpg.settings = { pinentry-mode = "loopback"; };
    services.gpg-agent.extraConfig = ''
      allow-loopback-pinentry
    '';

  };
}
