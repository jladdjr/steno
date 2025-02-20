1.1.0
===========
Major Updates:
- Adopt [Typey Type](https://didoesdigital.com/typey-type/dictionaries/typey-type/typey-type-full/)'s dictionary instead of Plover's dictionary ([source](https://github.com/didoesdigital/typey-type-data/blob/13cdba2f3fceec447e6cea28164b1eb642a2c687/dictionaries/typey-type/typey-type-full.json))

Minor Updates:
- Map `#` so that it repeats the previous stroke
- Map `#*` so that it toggles `*` for the previous stroke
- Install Clippy 2 instead of Clippy

1.0.0
=====
Initial release
- Include commands.json, main.json, user.json from openstenoproject/plover
- Include q-and-a.md from paulfioravanti/steno-dictionaries
- Include plover.cfg (for Raspberry Pi machine)
- Create justfile for copying over plover.cfg, retrieving Emily dictionaries,
  and installing Plover plugins
- Create RESOURCES.md with links to helpful resources for working with Plover,
  learning Plover theory, and building fluency with stenography

