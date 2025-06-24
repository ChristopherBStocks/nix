{ lib, ... }:

{
  disko.devices.disk = {
    system = {
      type = "disk";
      device = "/dev/disk/by-path/acpi-VMBUS:00-vmbus-33cdc2045b13450db914da4602887a54-lun-0";
      content = {
        type = "gpt";
        partitions = {
          esp = {
            type = "EF00";
            size = "1G";
            content = {
              type = "filesystem";
              format = "vfat";
              mountpoint = "/boot";
            };
          };
          os = {
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

    services = {
      type = "disk";
      device = "/dev/disk/by-path/acpi-VMBUS:00-vmbus-33cdc2045b13450db914da4602887a54-lun-1";
      content = {
        type = "gpt";
        partitions = {
          data = {
            size = "100%";
            type = "8300";
            content = {
              type = "filesystem";
              format = "ext4";
              mountpoint = "/opt/stacks";
            };
          };
        };
      };
    };

    ssd01 = {
      type = "disk";
      device = "/dev/disk/by-path/acpi-VMBUS:00-vmbus-33cdc2045b13450db914da4602887a54-lun-2";
      content = {
        type = "gpt";
        partitions = {
          data = {
            size = "100%";
            type = "8300";
            content = {
              type = "filesystem";
              format = "ext4";
              mountpoint = "/srv/ssd01";
            };
          };
        };
      };
    };

    hdd01 = {
      type = "disk";
      device = "/dev/disk/by-path/acpi-VMBUS:00-vmbus-33cdc2045b13450db914da4602887a54-lun-3";
      content = {
        type = "gpt";
        partitions = {
          data = {
            size = "100%";
            type = "8300";
            content = {
              type = "filesystem";
              format = "ext4";
              mountpoint = "/srv/hdd01";
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
