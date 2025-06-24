{ myModules, ... }:

{
  imports =
    [
      myModules.nixos.users.cstocks
      myModules.nixos.users.tsukia
    ];
}
