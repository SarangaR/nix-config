{ pkgs, ... }: {
  programs.plasma = {
    enable = false;
    overrideConfig = true;
    #
    # Some high-level settings:
    #
    workspace = {
      clickItemTo = "open"; # If you liked the click-to-open default from plasma 5
      lookAndFeel = "org.kde.breezedark.desktop";
      cursor = {
        theme = "Bibata-Modern-Ice";
        size = 32;
      };
      iconTheme = "Papirus-Dark";
      wallpaper = "/etc/nixos/homeManagerModules/desktopEnvironment/wallpapers/wallhaven-g7olpq_2560x1600.png";
    };

    fonts = {
      general = {
        family = "JetBrains Mono";
        pointSize = 12;
      };
    };
  };
}
