{
  description = "Soothing pastel theme for Nix";

  inputs = {
    nixpkgs.url = "nixpkgs/nixos-unstable";
  };

  outputs = {
    self,
    inputs,
    ...
  }: {
    homeManagerModules.catppuccin = import ./modules/home-manager;
    nixosModules.catppuccin = import ./modules/nixos;

    overlays = {
      pkgs = final: prev: {
        catppuccin-gtk = inputs.nixpkgs.legacyPackages.${final.system}.catppuccin-gtk;
      };
    };
  };
}
