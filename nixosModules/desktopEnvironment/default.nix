{...}: {
  imports = [
    ./hyprland.nix
  ];

  services = {
    xserver.enable = true;
    displayManager.sddm = {
      enable = true;
      wayland.enable = true;
      settings.General.DisplayServer = "wayland";
    };
    desktopManager.plasma6.enable = true;
  };
}
