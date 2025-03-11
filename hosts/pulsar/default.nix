{
  inputs,
  config,
  lib,
  ...
}: {
  imports = [
    ./hardware-configuration.nix
    inputs.nixos-hardware.nixosModules.lenovo-legion-16irx9h
  ];

  boot.loader.systemd-boot.enable = lib.mkForce false;
  boot.lanzaboote = {
    enable = true;
    pkiBundle = "/var/lib/sbctl";
    settings = {
      timeout = null;
      console-mode = "keep";
    };
  };

  services.fwupd.enable = true;

  networking.hostName = "pulsar";

  time.timeZone = "America/New_York";

  hardware.bluetooth.enable = true;
  services.blueman.enable = true;

  gaming.enable = true;

  # TODO
  system.stateVersion = "24.11";
}
