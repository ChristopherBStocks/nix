{ profiles, config, pkgs, lib, inputs, ... }:

{
  imports = [
    ./hardware-configuration.nix
    ./disko.nix
    ./static-ip.nix
    profiles.base.nixos
    profiles.device.server
    profiles.org.hydrogroup
    profiles.role.docker.standalone
    profiles.role.forgejo-runner
  ];
  system.stateVersion = "25.05";
  networking.hostName = "hgprod01";
  nix.settings.experimental-features = [ "nix-command" "flakes" ];
}
