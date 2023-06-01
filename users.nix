{ ... } : {

  users.users.deeengan = {
    isNormalUser = true;
    extraGroups = [ "networkmanager" "wheel" ];
  };

  nix.settings.trusted-users = [ "root" "deeengan" ];

}
  # Define a user account. Don't forget to set a password with ‘passwd’.
