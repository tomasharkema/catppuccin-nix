{
  description = "Soothing pastel theme for Nix";

  inputs = {
    nixpkgs.url = "nixpkgs/nixos-unstable";
  };

  outputs = _: {
    homeManagerModules.catppuccin = import ./modules/home-manager;
    nixosModules.catppuccin = import ./modules/nixos;
  };
}
