self: super: {
  ttrack = super.callPackage ./pkgs/ttrack { };
  todors = super.callPackage ./pkgs/todors { };
}
