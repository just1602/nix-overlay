{
  lib,
  rustPlatform,
  fetchFromGitHub,
}:

rustPlatform.buildRustPackage rec {
  pname = "todors";
  version = "0.0.8";

  src = fetchFromGitHub {
    owner = "just1602";
    repo = "todors";
    rev = "v${version}";
    hash = "sha256-QpNQSwdOzRMgpnSjDcx4fT4+p88AavjGri/DNwN5ha4=";
  };

  # when debugging locally
  # src = builtins.fetchGit {
  #   url = "file:///home/goldman/dev/todors";
  # };

  cargoHash = "sha256-aRJYvu+Ba92IOHurul6MsjrKJ2F5GSZl4WXp1ehPhrQ=";

  meta = {
    description = "Todors";
    homepage = "https://github.com/just1602/todors";
    license = lib.licenses.gpl3Only;
    mainProgram = "todors";
  };
}
