{ pkgs ? import <nixos> {} }:

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
    lxqt.lxqt-openssh-askpass
    pkgs.beam.packages.erlangR24.elixir
    rebar3
    squashfsTools
  ];
}
