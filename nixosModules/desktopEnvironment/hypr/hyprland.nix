{
  pkgs,
  ...
}: {
    programs.hyprland.enable = true;
    environment.sessionVariables.NIXOS_OZONE_WL = "1";
    environment.systemPackages = with pkgs; [
      wofi
      tofi
      kitty
      waybar
      kdePackages.dolphin
    ];
  }
