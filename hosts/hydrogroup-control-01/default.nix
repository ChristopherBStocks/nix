{
  deployment = {
    targetHost = "192.168.40.16";
    targetUser = "hgcolmena";
    targetPort = 2002;
    buildOnTarget = false;
    tags = [ "vm" "hyperv" ];
    allowLocalDeployment = true;
  };
  imports = [
    ./configuration.nix
  ];
}
