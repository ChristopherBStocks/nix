{ profiles, config, pkgs, lib, inputs, ... }:

{
  imports = [
    ./hardware-configuration.nix
    ./disko.nix
  ];
  system.stateVersion = "25.05";
  networking.hostName = "<hostname>";
  nix.settings = {
    experimental-features = [ "nix-command" "flakes" ];
    require-sigs = true;
    trusted-public-keys = [
      "<signing-key>"
      "cache.nixos.org-1:viIS5cG7z5S4FjVHaY2Pc6mfis/9+r7Zg47D6R4wlmY="
    ];
    trusted-users = [ "root" "<colmena>" ];
  };
}
