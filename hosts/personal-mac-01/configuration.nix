{ profiles, inputs, pkgs, lib, config, ... }:

{
  imports =
    [
      profiles.base.darwin
    ];
  system.configurationRevision = inputs.self.rev or inputs.self.dirtyRev or null;
  system.stateVersion = 6;
  system.primaryUser = "cstocks";
  nixpkgs.hostPlatform = "aarch64-darwin";
  nix.settings = {
    experimental-features = [ "nix-command" "flakes" ];
    require-sigs = false;
    trusted-public-keys = [
      "cache.nixos.org-1:viIS5cG7z5S4FjVHaY2Pc6mfis/9+r7Zg47D6R4wlmY="
    ];
    trusted-users = [ "root" ];
  };
}
