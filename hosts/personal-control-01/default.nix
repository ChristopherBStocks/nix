{
  deployment = {
    targetHost = "<ip>";
    targetUser = "hgcolmena";
    targetPort = 2002;
    buildOnTarget = false;
    tags = [ "hetzner" "cloud" ];
    allowLocalDeployment = true;
  };
  imports = [
    ./configuration.nix
  ];
}
