{config, ...}: {
  imports = [
    ./tailscale.nix
  ];

  networking = {
    networkmanager.enable = true;
    nftables.enable = true;
  };
}
