default:
    just --list
render:
    pixi run quarto render . --output-dir build/docs
preview:
    pixi run quarto preview
publish:
    pixi run quarto publish gh-pages
