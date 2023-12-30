{
  description = "Heretic Nix";

  outputs = { self, nixpkgs, systems }:
  let
    eachSystem = f: nixpkgs.lib.genAttrs (import systems) (system: f nixpkgs.legacyPackages.${system});
  in
  {
    legacyPackages = eachSystem (pkgs: {
      buildGoModule = pkgs.callPackage ./heretic-go-module.nix { };
    });
  };
}
