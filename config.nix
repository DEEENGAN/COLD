{ config, pkgs, ... }:
 
{
  imports = [
      ./hardware-configuration.nix
    ];

  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

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

  system.stateVersion = "23.05";
}
