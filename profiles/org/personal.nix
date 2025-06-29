{ myModules, ... }:

{
  imports =
    [
      myModules.nixos.users.pcolmena
      myModules.nixos.users.cstocks
    ];

  nix.settings = {
      require-sigs = true;
      trusted-public-keys = [
        "cstocks:Kk2kyi6/pkdRjMkpZrkl9zZxK33OHq2rRSBwD+vO8gY="
        "cache.nixos.org-1:viIS5cG7z5S4FjVHaY2Pc6mfis/9+r7Zg47D6R4wlmY="
      ];
      trusted-users = [ "root" "pcolmena" ];
    };
}
