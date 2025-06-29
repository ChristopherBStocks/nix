{
  deployment = {
    targetHost = "91.99.170.218";
    targetUser = "pcolmena";
    targetPort = 2002;
    buildOnTarget = false;
    tags = [ "hetzner" "cloud" ];
    allowLocalDeployment = true;
  };
  imports = [
    ./configuration.nix
  ];
}
