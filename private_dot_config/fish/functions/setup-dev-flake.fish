function setup-dev-flake --description "Setup a flake.nix for a local development environment in the current folder."
    if test -e ".envrc"
        echo "This folder contains a .envrc. Although this script works by merging the configuration, you should check whether everything works as intended."
    end

    echo 'use flake' >>.envrc
    echo '{
  inputs.nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";
  outputs = { self, nixpkgs }:
    let
      supportedSystems = [
        "x86_64-linux"
        "aarch64-linux"
      ];

      forEachSupportedSystem = f: nixpkgs.lib.genAttrs supportedSystems (system: f {
        pkgs = import nixpkgs { inherit system; };
      });
    in
    {
      formatter = forEachSupportedSystem ({ pkgs }: pkgs.nixpkgs-fmt);
      devShells = forEachSupportedSystem ({ pkgs }: {
        default = pkgs.mkShell {
          packages = with pkgs; [
            # TODO: Add all tools you need for your local development environment.
            just
          ];
          env = { };
        };
      });
    };
}' >flake.nix
    nix fmt
    direnv allow
end
