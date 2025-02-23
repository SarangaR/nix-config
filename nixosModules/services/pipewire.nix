{
  lib,
  config,
  ...
}: {
  config = {
    services.pipewire = {
      enable = true;
      wireplumber.extraConfig."10-disable-camera" = {
        "wireplumber.profiles" = {
          main."monitor.libcamera" = "disabled";
        };
      };
      alsa = {
        enable = true;
        support32Bit = true;
      };
      pulse.enable = true;
    };
  };
}
