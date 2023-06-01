{ config, pkgs, ... }:
 
{
  imports = [
      ./hardware-configuration.nix
    ];

  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  networking.hostName = "nixos"; # Define your hostname.
  networking.networkmanager.enable = true;

  time.timeZone = "America/Chicago";

  i18n.defaultLocale = "en_US.UTF-8";
  i18n.extraLocaleSettings = {
    LC_ADDRESS = "en_US.UTF-8";
    LC_IDENTIFICATION = "en_US.UTF-8";
    LC_MEASUREMENT = "en_US.UTF-8";
    LC_MONETARY = "en_US.UTF-8";
    LC_NAME = "en_US.UTF-8";
    LC_NUMERIC = "en_US.UTF-8";
    LC_PAPER = "en_US.UTF-8";
    LC_TELEPHONE = "en_US.UTF-8";
    LC_TIME = "en_US.UTF-8";
  };

  services.xserver = {
    layout = "us";
    xkbVariant = "";
  };

    nixpkgs.config.allowUnfree = true;
    nix.package = pkgs.nixUnstable;
    nix.settings.experimental-features = [ "flakes" "nix-command" ];
    nix.settings.substituters = [ "https://cache.nixos.org/" ];

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

  environment.systemPackages = with pkgs; [
  ];

  system.stateVersion = "23.05"; # Did you read the comment?
}
