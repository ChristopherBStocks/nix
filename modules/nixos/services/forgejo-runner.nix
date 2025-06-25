{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    forgejo-runner
  ];
  systemd.services.forgejo-runner = {
      description   = "Forgejo Runner";
      documentation = [ "https://forgejo.org/docs/latest/admin/actions/" ];

      after      = [ "docker.service" ];
      wantedBy   = [ "multi-user.target" ];

      serviceConfig = {
        ExecStart   = "${pkgs.forgejo-runner}/bin/forgejo-runner daemon";
        ExecReload  = "${pkgs.coreutils}/bin/kill -s HUP $MAINPID";

        User              = "cstocks";
        WorkingDirectory  = "/srv/hdd01/git-forgejo-runner";

        Restart     = "on-failure";
        RestartSec  = 10;
        TimeoutSec  = 0;
      };
    };
}
