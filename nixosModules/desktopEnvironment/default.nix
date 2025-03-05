{
  pkgs,
  ...
}: {
  imports = [
    ./hypr/hyprland.nix
    ./greetd.nix
  ];

  # services = {
  #   xserver.enable = true;
  #   displayManager.sddm = {
  #     enable = true;
  #     wayland.enable = true;
  #     settings = {
  #       General = {
  #         DisplayServer = "wayland";
  #         DefaultSession = "./hypr/hyprland.desktop";
  #       };
  #       Wayland = {
  #         CompositorCommand = "Hyprland";
  #         EnableHiDPI = true;
  #         SessionDir = "/usr/share/wayland-sessions";
  #       };
  #     };
  #   };
  #   desktopManager.plasma6.enable = false;
  # };
}
