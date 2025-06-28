{ profiles, config, pkgs, lib, inputs, ... }:

{
  imports = [
    ./hardware-configuration.nix
    ./disko.nix
    profiles.base.nixos
    profiles.device.server
    profiles.org.personal
    profiles.role.signer.personal
  ];
  system.stateVersion = "25.05";
  networking.hostName = "pctl01";
  nix.settings.experimental-features = [ "nix-command" "flakes" ];
}
