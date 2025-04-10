{...}: {
  virtualisation.docker.enable = true;
  hardware = {
    graphics.enable = true;
    nvidia.open = false;
    nvidia-container-toolkit.enable = true;
  };
  services.xserver = {
    enable = true;
    videoDrivers = [ "nvidia" ];
  };
}
