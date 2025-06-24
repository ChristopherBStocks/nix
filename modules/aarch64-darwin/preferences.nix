{ system, ... }:

{
  system.startup.chime = false;
  system.defaults = {
    NSGlobalDomain = {
      AppleScrollerPagingBehavior = true;
      AppleShowAllFiles = true;
      KeyRepeat = 2;
      "com.apple.mouse.tapBehavior" = 1;
    };
    WindowManager = {
      EnableStandardClickToShowDesktop = false;
      StandardHideDesktopIcons = true;
      StandardHideWidgets = true;
    };
    controlcenter = {
      BatteryShowPercentage = true;
      Bluetooth = true;
      FocusModes = false;
      Sound = true;
    };
    dock = {
      autohide = true;
      persistent-others = [ ];
      minimize-to-application = true;
      mru-spaces = false;
      show-recents = false;
      tilesize = 48;
    };
    finder = {
      AppleShowAllFiles = true;
      CreateDesktop = false;
      FXRemoveOldTrashItems = true;
      ShowExternalHardDrivesOnDesktop = false;
      ShowHardDrivesOnDesktop = false;
      ShowMountedServersOnDesktop = false;
      ShowRemovableMediaOnDesktop = false;
      _FXSortFoldersFirst = true;
      FXDefaultSearchScope = "SCcf";
      ShowPathbar = true;
      ShowStatusBar = true;
    };
    loginwindow = {
      GuestEnabled = false;
    };
    trackpad = {
      Clicking = true;
    };
    CustomUserPreferences = {
      NSGlobalDomain = {
        WebKitDeveloperExtras = true;
        AppleICUForce24HourTime = true;
        AppleInterfaceStyle = "Dark";
      };
      "com.apple.desktopservices" = {
        DSDontWriteNetworkStores = true;
        DSDontWriteUSBStores = true;
      };
      "com.apple.screensaver" = {
        askForPassword = 1;
        askForPasswordDelay = 0;
      };
      "com.apple.SoftwareUpdate" = {
        AutomaticCheckEnabled = true;
        ScheduleFrequency = 1;
        AutomaticDownload = 1;
        CriticalUpdateInstall = 1;
      };
    };
  };
}
