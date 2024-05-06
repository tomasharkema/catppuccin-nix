{
  description = "Soothing pastel theme for Nix";

  inputs = {
    nixpkgs.url = "nixpkgs/nixos-unstable";
  };

  outputs = {self, ...}: {
    homeManagerModules.catppuccin = import ./modules/home-manager;
    nixosModules.catppuccin = import ./modules/nixos;

    overlays = {
      pkgs = final: prev: {
        catppuccin-gtk = self.inputs.nixpkgs.legacyPackages.${final.system}.catppuccin-gtk;
      };
    };
  };
}
