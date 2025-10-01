{
  pkgs,
  lib,
  ...
}: {
  config = {
    services.greetd = {
      enable = true;
      settings = {
        default_session.command = "${pkgs.tuigreet}/bin/tuigreet --remember --time --cmd Hyprland";
      };
    };
  };
}
