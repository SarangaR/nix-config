{pkgs, ...}: {
  imports = [
    ./catppuccin.nix
    ./authentication
    ./desktopEnvironment
    ./gaming
    ./network
    ./nix
    ./programs
    ./services
    ./zsh.nix
    ./home-manager.nix
  ];

  users.users.saranga = {
    hashedPasswordFile = "/etc/saranga-hashed-password";
    shell = pkgs.zsh;
    isNormalUser = true;
    group = "saranga";
    extraGroups = ["wheel" "plugdev" "docker"];
  };
  users.groups.saranga = {};

  services.upower.enable = true;
  users.mutableUsers = false;
  security.rtkit.enable = true;
  boot = {
    # Silent boot
    initrd.verbose = false;
    consoleLogLevel = 0;
    kernelParams = ["quiet" "udev.log_level=3"];
    # Enable systemd in phase 1. Used for unlocking root partition with FIDO2/TPM
    initrd.systemd.enable = true;
    # Use the systemd-boot EFI boot loader.
    loader = {
      systemd-boot = {
        enable = true;
        # Limit the number of generations to keep
        configurationLimit = 10;
      };
      efi.canTouchEfiVariables = true;
    };
  };

  environment.systemPackages = with pkgs; [
    vim
    git
    acpi
    vscode
    just
  ];
}
