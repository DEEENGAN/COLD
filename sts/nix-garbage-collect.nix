{ ... }: {

  nix.gc = {
    automatic = true;
    randomizedDelaySec = "500";
    persistent = true;
    options = "--delete-older-than 5d";
    dates = "Mon 04:30:00";
  
  };
}
