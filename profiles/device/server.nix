{ myModules, ... }:

{
  imports =
    [
      myModules.nixos.upgrades.weekly
    ];
}
