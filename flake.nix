{
  description = "NixOS System Deployment and Management Flake";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-25.05";
    nixpkgs-unstable.url = "github:NixOS/nixpkgs?ref=ee930f9755f58096ac6e8ca94a1887e0534e2d81";
    nixpkgs-live.url = "github:NixOS/nixpkgs/nixos-unstable";
    colmena.url = "github:zhaofengli/colmena";
    mac-app-util.url = "github:hraban/mac-app-util";
    disko = {
      url = "github:nix-community/disko";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    nix-darwin = {
      url = "github:nix-darwin/nix-darwin/nix-darwin-25.05";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs =
    inputs @
    { self
    , nixpkgs
    , nixpkgs-unstable
    , nixpkgs-live
    , colmena
    , ...
    }:
    let
      profiles = import ./profiles;
      myModules = import ./modules;

      mkLinuxHost = hostPath:
        nixpkgs.lib.nixosSystem {
          specialArgs = { inherit profiles myModules inputs; };
          modules = [ inputs.disko.nixosModules.disko hostPath ];
        };

      mkDarwinHost = hostPath:
        inputs.nix-darwin.lib.darwinSystem {
          specialArgs = { inherit profiles myModules inputs; };
          modules =
            [
              inputs.mac-app-util.darwinModules.default
              hostPath
            ];
        };

    in
    {
      darwinConfigurations = {
        pmac01 = mkDarwinHost ./hosts/personal-mac-01/configuration.nix;
      };
      nixosConfigurations = {
        pctl01 = mkLinuxHost ./hosts/personal-control-01/configuration.nix;
        pcloud01 = mkLinuxHost ./hosts/personal-cloud-01/configuration.nix;
        tsu01 = mkLinuxHost ./hosts/tsukia-server-01/configuration.nix;
        tsu02 = mkLinuxHost ./hosts/tsukia-server-02/configuration.nix;
        hgctl01 = mkLinuxHost ./hosts/hydrogroup-control-01/configuration.nix;
        hgprod01 = mkLinuxHost ./hosts/hydrogroup-production-01/configuration.nix;
        hgstage01 = mkLinuxHost ./hosts/hydrogroup-staging-01/configuration.nix;
      };
      colmena = {
        meta = {
          nixpkgs = import nixpkgs { system = "x86_64-linux"; };
          specialArgs = { inherit profiles myModules inputs; };
        };
        defaults.imports = [ inputs.disko.nixosModules.disko ];
        pctl01 = ./hosts/personal-control-01;
        pcloud01 = ./hosts/personal-cloud-01;
        hgctl01 = ./hosts/hydrogroup-control-01;
        hgprod01 = ./hosts/hydrogroup-production-01;
        hgstage01 = ./hosts/hydrogroup-staging-01;
      };
      formatter = {
        x86_64-linux = nixpkgs.legacyPackages.x86_64-linux.nixpkgs-fmt;
        aarch64-darwin = nixpkgs.legacyPackages.aarch64-darwin.nixpkgs-fmt;
      };
    };
}
