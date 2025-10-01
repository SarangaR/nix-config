{inputs, ...}: {
  imports = [
    inputs.home-manager.nixosModules.home-manager
  ];
  home-manager = {
    users.saranga = import ./home.nix;
    useGlobalPkgs = true;
    useUserPackages = true;
    extraSpecialArgs = {inherit inputs;};
    sharedModules = [ inputs.plasma-manager.homeModules.plasma-manager ];
    backupFileExtension = "backup";
  };
}
