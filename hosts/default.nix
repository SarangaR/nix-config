{inputs, ...}: let
  inherit (inputs.nixpkgs.lib) nixosSystem;
  withCommonModules = path: ([path]
    ++ [
      ../nixosModules
      inputs.lanzaboote.nixosModules.lanzaboote
    ]);
  specialArgs = {inherit inputs;};
in {
  flake = {
    nixosConfigurations = {
      pulsar = nixosSystem {
        inherit specialArgs;
        modules = withCommonModules ./pulsar;
      };
    };
  };
}
