{ myModules, ... }:

{
  imports = [
    ./generic.nix
    myModules.nixos.locale
    myModules.nixos.networking
    myModules.nixos.services.openssh
    myModules.nixos.services.fail2ban
  ];
}
