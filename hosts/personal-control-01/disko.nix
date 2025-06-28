{ lib, ... }:

{
  disko.devices.disk = {
    system = {
      type = "disk";
      device = "/dev/sda";
      content = {
        type = "gpt";
        partitions = {
          bios = {
            size = "1M";
            type = "EF02";
          };
          esp = {
            type = "EF00";
            size = "1G";
            content = {
              type = "filesystem";
              format = "vfat";
              mountpoint = "/boot";
              mountOptions = [ "umask=0077" ];
            };
          };
          os = {
            size = "100%";
            type = "8300";
            content = {
              type = "filesystem";
              format = "ext4";
              mountpoint = "/";
             mountOptions = [ "noatime" "discard" ];
            };
          };
        };
      };
    };
  };
  boot.loader = {
    grub = {
      enable = true;
      devices = [ "nodev" ];
      efiSupport = true;
      efiInstallAsRemovable = true;
    };
    efi = {
      efiSysMountPoint = "/boot/efi";
    };
  };
}
