{
  description = "Basic development shell environment";

  outputs = { self, nixpkgs }:
    let pkgs = nixpkgs.legacyPackages.x86_64-linux;
    in {
      devShell.x86_64-linux = pkgs.mkShell {
        buildInputs = with pkgs; [
          clang
          gcc
          python3Full
          tigervnc
          sshfs
          nodejs
          nodePackages.npm
        ];
        shellHook = ''
          echo "Welcome to the dev environment"
        '';
      };
    };
}
