{
  lib,
  rustPlatform,
  fetchFromGitHub,
}:

rustPlatform.buildRustPackage rec {
  pname = "todors";
  version = "0.0.7";

  src = fetchFromGitHub {
    owner = "just1602";
    repo = "todors";
    rev = "v${version}";
    hash = "sha256-o0tHCdQ1bKz2QQX9b9Z9VPEw5No4DnJuVnCHxI1o9fo=";
  };

  # when debugging locally
  # src = builtins.fetchGit {
  #   url = "file:///home/goldman/dev/todors";
  # };

  cargoHash = "sha256-X+rpsgHhmr0Q8hvwphd8Z5suSk3scPTd6VWXUghctrI=";

  meta = {
    description = "Todors";
    homepage = "https://github.com/just1602/todors";
    license = lib.licenses.gpl3Only;
    mainProgram = "todors";
  };
}
