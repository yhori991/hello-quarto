default:
    just --list
render:
    pixi run quarto render docs --output-dir ../_site
preview:
    pixi run quarto preview
publish:
    pixi run quarto publish gh-pages _site --no-prompt --no-browser --no-render
clean:
    git clean -fdx # remove untraced files