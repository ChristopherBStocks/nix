{ config, pkgs, lib, inputs, ... }:
{
  imports = [
    ./hardware-configuration.nix
    ./disko.nix
    profiles.base.nixos
    profiles.device.server
        profiles.org.tsukia
        profiles.role.docker.standalone
  ];
  system.stateVersion = "25.05";
  networking.hostName = "tsu02";
  nix.settings.experimental-features = [ "nix-command" "flakes" ];
}
