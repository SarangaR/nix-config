{
  pkgs,
  lib,
  ...
}: {
  config = {
    services.greetd = {
      enable = true;
      settings = {
        default_session.command = "${lib.getExe' pkgs.greetd.greetd "agreety"} --cmd Hyprland";
      };
    };
  };
}
