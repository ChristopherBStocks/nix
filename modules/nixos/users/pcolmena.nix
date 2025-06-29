{
  users.users.pcolmena = {
    isNormalUser = true;
    description = "Personal Colmena";
    extraGroups = [ "networkManager" "wheel" ];
    openssh.authorizedKeys.keys = [
      "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIEGa+TvUFbVonD736wScecIsPNtssIefvegR05QwC5aU Personal Colmena"
    ];
  };
  security.sudo.extraRules =
    [{
      users = [ "pcolmena" ];
      commands = [{
        command = "ALL";
        options = [ "NOPASSWD" ];
      }];
    }];
}
