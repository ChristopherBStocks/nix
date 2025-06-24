{
  disko.devices.disk = {
    system = {
      type = "disk";
      device = "/dev/disk/by-path/pci-0000:00:1f.2-ata-1";
      content = {
        type = "gpt";
        partitions = {
          esp = {
            type = "EF00";
            size = "512M";
            content = {
              type = "filesystem";
              format = "vfat";
              mountpoint = "/boot/efi";
            };
          };
          root = {
            size = "100%";
            type = "8300";
            content = {
              type = "filesystem";
              format = "ext4";
              mountpoint = "/";
            };
          };
        };
      };
    };
  };
  boot.loader = {
    systemd-boot.enable = true;
    efi.canTouchEfiVariables = true;
  };
}
