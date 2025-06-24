{ config, ... }:
{
  nix.settings = {
    secret-key-files = ["/etc/nix/keys/signing-secret"];
  };
}