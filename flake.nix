{
  description = "Nixpkgs overlay for my build of dwm";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
  };

  outputs =
    { self, nixpkgs }:
    {

      overlays.default = final: prev: {
        dwm = prev.dwm.overrideAttrs (old: {
          src = ./.;
        });
      };
    };
}
