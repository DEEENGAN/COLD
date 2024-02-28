{
  services.openssh = {  
     enable = true;  
     ports = [22];
     settings.PasswordAuthentication = false;
  };

  networking.firewall = {
      enable = true;
      allowedTCPPorts = [ 22 ];
  };

   users.users.deeengan.openssh.authorizedKeys.keys = ["ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIDcjGd6k9lGjL+AQ3T73Pn0dPZ4ZRijt+W6RA4h0Axct writing@deeengan PC"];

}

