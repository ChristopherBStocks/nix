{ myModules, config, ... }:

{
  imports =
    [
      myModules.nixos.users.hgcolmena
      myModules.nixos.users.cstocks
    ];

  nix.settings = {
    require-sigs = true;
    trusted-public-keys = [
      "hydrogroup:a4eFZrHH5vsfjnfLcHUa+i8ntahDKCqFOyN6pG0vpsk="
      "cache.nixos.org-1:viIS5cG7z5S4FjVHaY2Pc6mfis/9+r7Zg47D6R4wlmY="
    ];
    trusted-users = [ "root" "hgcolmena" ];
  };
}
