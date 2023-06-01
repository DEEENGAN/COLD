{ pkgs, config, ... } : {

  users.users.deeengan = {
    isNormalUser = true;
    description = "Dee Engan";
    extraGroups = [ "networkmanager" "wheel" ];
    shell = pkgs.fish;
  };

}

  # Define a user account. Don't forget to set a password with ‘passwd’.
