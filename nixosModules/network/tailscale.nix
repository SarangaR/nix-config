{
  pkgs,
  config,
  ...
}: {
  services.tailscale = {
    enable = true;
    useRoutingFeatures = "client";
  };

  environment.systemPackages = [pkgs.tailscale];
}
