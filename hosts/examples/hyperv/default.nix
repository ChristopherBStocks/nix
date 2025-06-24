{
  deployment = {
    targetHost = "<host>";
    targetUser = "<colmena>";
    targetPort = 2002;
    buildOnTarget = false;
    tags = [ "hyperv" "vm" ];
    allowLocalDeployment = false;
  };
  imports = [
    ./configuration.nix
  ];
}
