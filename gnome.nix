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
        pkgs.borgbackup
	    pkgs.wl-clipboard
	    pkgs.unzip
	    pkgs.gnome.nautilus
	    pkgs.tilix
	    pkgs.pinentry
	    pkgs.gnupg
	    pkgs.vim
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

    # X11 windowing
    services.xserver.enable = true;

    # disable
    services.gnome.core-utilities.enable = false;
    services.xserver.excludePackages = [ pkgs.xterm ];
    environment.gnome.excludePackages = [ pkgs.gnome-tour ];
    documentation.nixos.enable = false;
    services.printing.enable = false;

}
