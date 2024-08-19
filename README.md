# UPPMAX Python intro

[![Check links](https://github.com/UPPMAX/uppmax_intro_python/actions/workflows/check_links.yaml/badge.svg?branch=main)](https://github.com/UPPMAX/uppmax_intro_python/actions/workflows/check_links.yaml)
[![Check markdown](https://github.com/UPPMAX/uppmax_intro_python/actions/workflows/check_markdown.yaml/badge.svg?branch=main)](https://github.com/UPPMAX/uppmax_intro_python/actions/workflows/check_markdown.yaml)
[![Check spelling](https://github.com/UPPMAX/uppmax_intro_python/actions/workflows/check_spelling.yaml/badge.svg?branch=main)](https://github.com/UPPMAX/uppmax_intro_python/actions/workflows/check_spelling.yaml)
[![Create website](https://github.com/UPPMAX/uppmax_intro_python/actions/workflows/create_website.yaml/badge.svg?branch=main)](https://github.com/UPPMAX/uppmax_intro_python/actions/workflows/create_website.yaml)

## Getting started

To work on the website locally first create a virtual environment and install
the required dependencies

``` bash
python -m venv uppmax_venv
source uppmax_venv/bin/activate
pip install -r requirements.txt
```

Then serve the website and edit

``` bash
mkdocs serve
```

## Files used by continuous integration scripts

Filename                              |Descriptions
--------------------------------------|--------------------------------------------------------------------------------------------------------------------------------------
[mlc_config.json](mlc_config.json)    |Configuration of the link checker, use `markdown-link-check --config mlc_config.json --quiet docs/**/*.md` to do link checking locally
[.spellcheck.yml](.spellcheck.yml)    |Configuration of the spell checker, use `pyspelling -c .spellcheck.yml` to do spellcheck locally
[.wordlist.txt](.wordlist.txt)        |Whitelisted words for the spell checker, use `pyspelling -c .spellcheck.yml` to do spellcheck locally
[.markdownlint.jsonc](.markdownlint.jsonc)|Configuration of the markdown linter, use `markdownlint "**/*.md"` to do markdown linting locally. The name of this file is a default name.
[.markdownlintignore](.markdownlintignore)|Files ignored by the markdown linter, use `markdownlint "**/*.md"` to do markdown linting locally. The name of this file is a default name.
