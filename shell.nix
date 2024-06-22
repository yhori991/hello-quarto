{ pkgs ? import <nixpkgs> {} }:
  pkgs.mkShell {
    NIX_ENFORCE_PURITY = false;
    nativeBuildInputs = with pkgs; [
      quarto
      texliveFull
      micromamba
    ];
    shellHook = ''
    '';
  }