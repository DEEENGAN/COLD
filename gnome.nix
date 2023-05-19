{ config, pkgs, ... }: {

    boot.loader.grub.enable = true;
    boot.loader.grub.device = "/dev/nvme0n1";
    boot.loader.grub.useOSProber = true;

    # X11 keymapping
    services.xserver = {
        layout = "us";
        xkbVariant = "";
  };

    nixpkgs.config.allowUnfree = true;
    nix.package = pkgs.nixUnstable;
    nix.settings.experimental-features = [ "flakes" "nix-command" ];
    nix.settings.substituters = [ "https://cache.nixos.org/" ];

    environment.systemPackages = with pkgs; [
	    pkgs.anki-bin
	    pkgs.pinentry
	    pkgs.tilix
	    pkgs.unzip
	    pkgs.vim
	    pkgs.wl-clipboard
      pkgs.borgbackup
      pkgs.git
      pkgs.gnupg
  ];

    # tilix
    programs.bash.vteIntegration = true;

    # needed curses
    programs.gnupg.agent = {
        enable = true;
        enableSSHSupport = true;
        pinentryFlavor = "curses";
    };

    # enable
    services.flatpak.enable = true;
    services.xserver.displayManager.gdm.enable = true;
    services.xserver.desktopManager.gnome.enable = true;
    
    # Chinese, needs /.config/ibus/rime with Cangjie6 https://github.com/rime-aca/rime-cangjie6, then also turn on in the settings?
    i18n.inputMethod.enabled = "ibus";
    i18n.inputMethod.ibus.engines = with pkgs.ibus-engines; [ rime ];
    
    # X11 windowing
    services.xserver.enable = true;

    # disable
    services.gnome.core-utilities.enable = false;
    services.xserver.excludePackages = [ pkgs.xterm ];
    environment.gnome.excludePackages = [ pkgs.gnome-tour ];
    documentation.nixos.enable = false;
    services.printing.enable = false;
    

}
