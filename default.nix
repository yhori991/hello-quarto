{ pkgs ? import <nixpkgs> {} }:
  pkgs.mkShell {
    buildInputs = with pkgs; [
      texliveFull
      pixi
      just
    ];
    shellHook = ''
    eval "$(pixi shell-hook)"
    '';
  }