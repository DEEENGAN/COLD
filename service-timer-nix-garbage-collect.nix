{ ... }: {

    nix.gc.automatic = true;
    nix.gc.randomizedDelaySec = "500";
    nix.gc.persistent = true;
    nix.gc.options = "--delete-older-than 14d";
    nix.gc.dates = "Mon 04:30:00";

}
