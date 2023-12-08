plover_pip := "~/.local/bin/pip3.9"
plover_config_remote := "~/.local/share/plover/plover.cfg"
plover_config_local := "plover_configs/rpi_plover.cfg"

# Mac
# plover_pip := "~/bin/Plover.app/Contents/Frameworks/Python.framework/Versions/3.9/bin
# ./python -m pip install git+https://github.com/Josiah-tan/plover_clippy_2

default:
        just -l

retrieve_dicts:
	wget --quiet https://raw.githubusercontent.com/EPLHREU/emily-modifiers/master/emily-modifiers.py -O dictionaries/emily-modifiers.py
	wget --quiet https://raw.githubusercontent.com/EPLHREU/emily-symbols/main/emily-symbols.py -O dictionaries/emily-symbols.py

install_plugins:
        # https://github.com/psethwick/plover_console_ui
        {{plover_pip}} install plover-console-ui

        # https://github.com/jladdjr/plover-ninja
        {{plover_pip}} install plover-ninja

        # https://github.com/paulfioravanti/plover-q-and-a
        {{plover_pip}} install plover_q_and_a

        # https://github.com/paulfioravanti/plover-local-env-var
        {{plover_pip}} install plover-local-env-var

        # https://github.com/openstenoproject/plover_python_dictionary
        {{plover_pip}} install plover-python-dictionary

        # https://github.com/antistic/plover_markdown_dictionary
        {{plover_pip}} install plover_markdown_dictionary

        # https://github.com/tckmn/plover_clippy
        {{plover_pip}} install git+https://github.com/Josiah-tan/plover_clippy_2

install_plover_config:
        cp {{plover_config_local}} {{plover_config_remote}}

install: retrieve_dicts install_plugins install_plover_config
