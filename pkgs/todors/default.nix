{
  lib,
  rustPlatform,
  fetchFromGitHub,
}:

rustPlatform.buildRustPackage rec {
  pname = "todors";
  version = "0.0.2";

  src = fetchFromGitHub {
    owner = "just1602";
    repo = "todors";
    rev = "v${version}";
    hash = "sha256-3mq25D/b3A3dCRLj/tlsFQ+5SDUhtY/T088R9sz9jms=";
  };

  cargoHash = "sha256-ZDlf5jnsXxX+UiiGDIuW/v8+0lMUPWC8SVLJBsHG9MQ=";

  meta = {
    description = "Todors";
    homepage = "https://github.com/just1602/todors";
    license = lib.licenses.gpl3Only;
    mainProgram = "todors";
  };
}
