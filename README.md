# Steno Dictionaries for Plover

## Overview

This repository contains [dictionaries](https://plover.readthedocs.io/en/latest/dict_formats.html)
that provide the translations used by [Plover](http://www.openstenoproject.org/plover/),
a free, open source [stenography](https://www.artofchording.com/introduction/how-steno-works.html) engine.
An attempt was made to preserve the history of these files when copying them from the Plover repository[^1][^2].

This repository also has commands to dynamically retrieve other helpful dictionaries
as described in more detail in the following sections.

## Dictionary overview

* commands.json - contains a subset of the default [modifier commands](https://plover.readthedocs.io/en/latest/translation_language.html#modifier-keys)
and [Plover control commands](https://plover.readthedocs.io/en/latest/translation_language.html#control-commands)
* main.json - the main Plover dictionary, a free and open source dictionary
with [roots in the StenEd theory](https://www.artofchording.com/introduction/theories-and-dictionaries.html#plover-theory).
Contains more than 147,000 translations.
* user.json - a custom dictionary that can be used to [override](https://github.com/openstenoproject/plover/wiki/Built-in-tools#main-window) the default translations provided in `main.json`

## Dictionaries retrieved from other sources

The following dictionaries are automatically retrieved using the command
`make retrieve_dicts`
from the root of this repository:

* emily-symbols.py - for more information, see [emily-symbols](https://github.com/EPLHREU/emily-symbols)
* emily-modifiers.py - for more information, see [emily-modifiers](https://github.com/EPLHREU/emily-modifiers)

[^1]: `commands.json`, `main.json`, and `user.json` were copied from
[openstenoproject/plover](https://github.com/openstenoproject/plover/tree/main/plover/assets)
[^2]: [Git Filter Repo](https://github.com/newren/git-filter-repo#how-do-i-use-it)
was used to preserve the Git history for Plover's dictionaries.
(The literal command used was
`python3 git-filter-repo --path-glob 'plover/assets/*.json'`)
