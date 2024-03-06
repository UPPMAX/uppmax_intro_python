# UPPMAX Python intro

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

## Files used for continuous integration scripts

Filename                           |Descriptions
-----------------------------------|------------------------------------------------------------------------------------------------------
[mlc_config.json](mlc_config.json) |Configuration of the link checker, use `markdown-link-check --config mlc_config.json --quiet docs/**/*.md` to do link checking locally
[.spellcheck.yml](.spellcheck.yml) |Configuration of the spell checker, use `pyspelling -c .spellcheck.yml` to do spellcheck locally
[.wordlist.txt](.wordlist.txt)     |Whitelisted words for the spell checker, use `pyspelling -c .spellcheck.yml` to do spellcheck locally
