{ pkgs ? import <nixpkgs> {} }:
  pkgs.mkShell {
    NIX_ENFORCE_PURITY = false;
    nativeBuildInputs = with pkgs; [
      quarto
      texliveFull
      micromamba
      pixi
    ];
    shellHook = ''
    watch_file pixi.lock
    eval "$(pixi shell-hook)"
    '';
  }