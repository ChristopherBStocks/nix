{
  locale = import ./locale.nix;
  networking = import ./networking.nix;
  services = import ./services;
  upgrades = import ./upgrades;
  users = import ./users;
}

