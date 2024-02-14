{ pkgs, ... }:
 
{

    boot.loader.systemd-boot.enable = true;
    boot.loader.efi.canTouchEfiVariables = true;

    services.xserver.xkb = {
      layout = "us";
      variant = "";
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

    # do not ever touch unless required to by release notes
      system.stateVersion = "23.05";
}
