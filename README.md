# Steno Dictionaries for Plover

## Overview

This repository contains stenography [dictionaries](https://plover.readthedocs.io/en/latest/dict_formats.html).
Each dictionary provides translations that make up a stenography [theory](https://www.artofchording.com/introduction/theories-and-dictionaries.html).
These translations are read by [Plover](http://www.openstenoproject.org/plover/), a free, open source stenography engine.
Plover uses these translations to convert steno strokes into written words.

The main dictionary used by this repo is Diana MacDonald's [Typey Type](https://didoesdigital.com/typey-type/support#typey-type-dictionary) dictionary.
This dictionary is based on Plover's own dictionary.
Plover's theory was originally based on [StenEd](https://www.stenedsource.com/).

This repository also contains a dictionary from Paul Fioravanti's
[steno-dictionaries repo](https://github.com/paulfioravanti/steno-dictionaries/blob/main/dictionaries/q-and-a.md)
for transcribing a court Q & A session.
An attempt was made to preserve the history of this file when copying it into this repository.[^3].

This repository also has commands to dynamically retrieve other helpful dictionaries
as described in more detail in the following sections.

## Prerequisites

In order to download dictionaries retrieved from other sources,
you will need to install [Just](https://github.com/casey/just#installation).
Just will let you execute the recipes contained in [justfile](./justfile).

## Dictionary overview

The following dictionaries are included in the [dictionaries](./dictionaries) folder:

* commands.json - contains a subset of the default [modifier commands](https://plover.readthedocs.io/en/latest/translation_language.html#modifier-keys)
and [Plover control commands](https://plover.readthedocs.io/en/latest/translation_language.html#control-commands)
* typey-type-full.json - [Typey Type](https://didoesdigital.com/typey-type/dictionaries/typey-type/typey-type-full/)'s dictiory. Builds on Plover's dictionary with misstrokes removed from the top 10,000 words.
with [roots in the StenEd theory](https://www.artofchording.com/introduction/theories-and-dictionaries.html#plover-theory).
Contains more than 147,000 translations.
* user.json - a custom dictionary that can be used to [override](https://github.com/openstenoproject/plover/wiki/Built-in-tools#main-window) the default translations provided in `typey-type-full.json`
* a dictionary from Paul Fioravanti's [steno-dictionaries repo](https://github.com/paulfioravanti/steno-dictionaries/blob/main/dictionaries/q-and-a.md) for transcribing a court Q & A session.
See the Plover Q&A Plugin's [Instructions page](https://github.com/paulfioravanti/plover-q-and-a/blob/main/INSTRUCTIONS.md) for more information on what this dictionary contains and how it can be used with the Plover Q&A plugin.

## Dictionaries retrieved from other sources

The following dictionaries are automatically retrieved using the command
`just retrieve_dicts`
from the root of this repository:

* emily-symbols.py - for more information, see [emily-symbols](https://github.com/EPLHREU/emily-symbols)
* emily-modifiers.py - for more information, see [emily-modifiers](https://github.com/EPLHREU/emily-modifiers)

The definition of the `retrieve_dicts` Just recipe (and all other recipes) can be found
in the [justfile](./justfile).

[^1]: `commands.json` and `user.json` were copied from
[openstenoproject/plover](https://github.com/openstenoproject/plover/tree/main/plover/assets)
[^2]: [Git Filter Repo](https://github.com/newren/git-filter-repo#how-do-i-use-it)
was used to preserve the Git history for Plover's dictionaries.
(The literal command used was
`python3 git-filter-repo --path-glob 'plover/assets/*.json'`)
[^3]: [Git Filter Repo](https://github.com/newren/git-filter-repo#how-do-i-use-it)
was used to preserve the Git history for the q-and-a.md dictionary.
(The literal command used was
`python3 git-filter-repo --path dictionaries/q-and-a.md`)
