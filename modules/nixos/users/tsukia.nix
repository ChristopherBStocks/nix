{
  users.users.tsukia = {
    isNormalUser = true;
    description = "Tsukia Mewmew";
    extraGroups = [ "networkManager" "wheel" "docker" ];
    openssh.authorizedKeys.keys = [
      "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAILqHCvFmu1uniKAF2TJuefA8eJ3qWX8p9xqjU/ieuL2n TsukiaPC"
    ];
  };
  security.sudo.extraRules =
    [{
      users = [ "tsukia" ];
      commands = [{
        command = "ALL";
        options = [ "NOPASSWD" ];
      }];
    }];
}
