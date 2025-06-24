{
  users.users.hgcolmena = {
    isNormalUser = true;
    description = "Hydro Group Colmena";
    extraGroups = [ "networkManager" "wheel" ];
    openssh.authorizedKeys.keys = [
      "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIBRmys+L0/Kn3WNjlp9FSnFQEZng5eFKos1t1X0RyRZL HG Colmena"
    ];
  };
  security.sudo.extraRules =
    [{
      users = [ "hgcolmena" ];
      commands = [{
        command = "ALL";
        options = [ "NOPASSWD" ];
      }];
    }];
}
