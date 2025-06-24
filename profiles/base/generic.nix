{ myModules, ... }:

{
  imports = [
    myModules.pkgs.shared.utils.btop
    myModules.pkgs.shared.utils.git
    myModules.pkgs.shared.utils.nh
    myModules.pkgs.shared.utils.tree
    myModules.pkgs.shared.utils.colmena
    myModules.pkgs.shared.utils.neovim
    myModules.pkgs.shared.utils.openssh
    myModules.pkgs.shared.utils.home-manager
    myModules.pkgs.shared.utils.zip
  ];
}
