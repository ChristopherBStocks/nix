{ myModules, ... }:

{
  imports = [
    ./generic.nix
    myModules.aarch64-darwin.preferences
  ];
}
