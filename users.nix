{ pkgs, config, ... } : {


users.users.deeengan = {
    isNormalUser = true;
    description = "Dee Engan";
    extraGroups = [ "networkmanager" "wheel" ];
    packages = with pkgs; [
      firefox
    #  thunderbird
    ];
  };

}

  # Define a user account. Don't forget to set a password with ‘passwd’.
