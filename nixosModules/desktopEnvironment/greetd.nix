{
  pkgs,
  lib,
  ...
}: {
  config = {
    services.greetd = {
      enable = true;
      settings = {
        default_session.command = "${pkgs.greetd.tuigreet}/bin/tuigreet --remember --time --cmd Hyprland";
        # default_session.command = "${pkgs.cage}/bin/cage -s -- ${pkgs.greetd.regreet}/bin/regreet --cmd Hyprland";
      };
    };
  };
}
