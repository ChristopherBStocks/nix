{ myModules, ... }:

{
  imports =
    [
      myModules.nixos.services.forgejo-runner
    ];
}
