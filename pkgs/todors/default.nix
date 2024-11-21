{
  lib,
  rustPlatform,
  fetchFromGitHub,
}:

rustPlatform.buildRustPackage rec {
  pname = "todors";
  version = "0.0.5";

  src = fetchFromGitHub {
    owner = "just1602";
    repo = "todors";
    rev = "v${version}";
    hash = "sha256-7A3YWEOCKBFk3NKRBQQpmhqewIm3fmOJxLKlsFS7jmk=";
  };

  # when debugging locally
  # src = builtins.fetchGit {
  #   url = "file:///home/goldman/dev/todors";
  # };

  cargoHash = "sha256-IqBl1BhnZVvhhgZjSW/txXuzvBmTMHnvOn3Gx+2x/kU=";

  meta = {
    description = "Todors";
    homepage = "https://github.com/just1602/todors";
    license = lib.licenses.gpl3Only;
    mainProgram = "todors";
  };
}
