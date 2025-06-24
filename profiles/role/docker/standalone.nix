{ myModules, ... }:

{
  imports =
    [
      myModules.nixos.services.docker.standalone
      myModules.pkgs.shared.utils.kaniko
    ];
}
