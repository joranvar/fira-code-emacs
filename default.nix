{ python3Packages
, curl
, unzip
, stdenv
}:
with pkgs;
stdenv.mkDerivation {
  name = "fira-code-emacs";
  src = ./.;
  buildInputs = [
    python3Packages.pip
    python3Packages.fonttools
    curl
    unzip
  ];
  installPhase = ''
    mkdir -p $out/share/fonts/FiraEmacs/
    cp modified/* $out/share/fonts/FiraEmacs/
  '';
}
