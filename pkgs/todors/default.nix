{
  lib,
  rustPlatform,
  fetchFromGitHub,
}:

rustPlatform.buildRustPackage rec {
  pname = "todors";
  version = "0.0.4";

  src = fetchFromGitHub {
    owner = "just1602";
    repo = "todors";
    rev = "v${version}";
    hash = "sha256-KnqJTeZI6ms72oD1Z0278aHROnJgbNRDnUE9jmQf9So=";
  };

  # when debugging locally
  # src = builtins.fetchGit {
  #   url = "file:///home/goldman/dev/todors";
  # };

  cargoHash = "sha256-c7NZ//ttoRMqDz75MUnnZ64bcpD2stgoj8/v8xrhvEs=";

  meta = {
    description = "Todors";
    homepage = "https://github.com/just1602/todors";
    license = lib.licenses.gpl3Only;
    mainProgram = "todors";
  };
}
