{
  description = "My personal nix overlay";

  outputs = { ... }: {
    overlay = import ./default.nix;
  };
}
