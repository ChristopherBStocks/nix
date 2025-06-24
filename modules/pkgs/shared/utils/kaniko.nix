{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    kaniko
  ];
}
