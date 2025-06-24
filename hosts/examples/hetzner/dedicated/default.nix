{
  deployment = {
    targetHost = "<host>";
    targetUser = "<colmena>";
    targetPort = 2002;
    buildOnTarget = false;
    tags = [ "vm" "hyperv" ];
    allowLocalDeployment = false;
  };
  imports = [
    ./configuration.nix
  ];
}
