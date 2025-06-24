{ myModules, ... }:

{
  imports =
    [
      myModules.nixos.users.pcolmena
      myModules.nixos.users.cstocks
    ];
}
