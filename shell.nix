{ pkgs ? import <nixpkgs> {} }:

with pkgs;

mkShell {
  name = "nervesShell";
  buildInputs = [
    autoconf
    automake
    curl
    erlangR24
    fwup
    git
    pkgs.beam.packages.erlangR24.elixir
    rebar3
    squashfsTools
    x11_ssh_askpass
  ];
  shellHook = ''
    SUDO_ASKPASS=${pkgs.x11_ssh_askpass}/libexec/x11-ssh-askpass
  '';
}
