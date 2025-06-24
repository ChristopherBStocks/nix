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
  ];
  system.stateVersion = "25.05";
  networking.hostName = "hgstage01";
  nix.settings.experimental-features = [ "nix-command" "flakes" ];
}
