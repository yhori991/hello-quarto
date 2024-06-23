{ pkgs ? import <nixpkgs> {} }:
  pkgs.mkShell {
    nativeBuildInputs = with pkgs; [
      texliveFull
      pixi
    ];
    shellHook = ''
    eval "$(pixi shell-hook)"
    '';
  }