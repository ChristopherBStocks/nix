{
  deployment = {
    targetHost = "192.168.40.18";
    targetUser = "hgcolmena";
    targetPort = 2002;
    buildOnTarget = false;
    tags = [ "vm" "hyperv" ];
    allowLocalDeployment = false;
  };
  imports = [
    ./configuration.nix
  ];
}
