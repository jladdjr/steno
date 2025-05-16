# Debian
# - Plover installed into a virtual env
#   (at ~/venvs/plover)
#   using the latest Python wheel release
plover_pip := "/home/jim/venvs/plover/bin/pip3"
plover_pip_options := ""
plover_config_remote := "~/.config/plover/plover.cfg"
plover_config_local := "plover_configs/debian_plover.cfg"
clippy_log := "~/.config/plover/clippy_2.org"
shell_rc := "~/.bashrc"

# Raspberry Pi
# plover_pip := "~/.local/bin/pip3.9"
# plover_pip_options := ""
# plover_config_remote := "~/.local/share/plover/plover.cfg"
# plover_config_local := "plover_configs/rpi_plover.cfg"

# Mac
# plover_pip := "~/bin/Plover.app/Contents/Frameworks/Python.framework/Versions/3.9/bin
# plover_pip_options := ""
# ./python -m pip install git+https://github.com/Josiah-tan/plover_clippy_2

default:
        just -l

retrieve_dicts:
	wget --quiet https://raw.githubusercontent.com/EPLHREU/emily-modifiers/master/emily-modifiers.py -O dicts/emily-modifiers.py
	wget --quiet https://raw.githubusercontent.com/EPLHREU/emily-symbols/main/emily-symbols.py -O dicts/emily-symbols.py

install_plugins:
        # https://github.com/psethwick/plover_console_ui
        {{plover_pip}} install {{plover_pip_options}} plover-console-ui

        # https://github.com/jladdjr/plover-ninja
        {{plover_pip}} install {{plover_pip_options}} plover-ninja

        # https://github.com/paulfioravanti/plover-q-and-a
        {{plover_pip}} install {{plover_pip_options}} plover_q_and_a

        # https://github.com/paulfioravanti/plover-local-env-var
        {{plover_pip}} install {{plover_pip_options}} plover-local-env-var

        # https://github.com/openstenoproject/plover_python_dictionary
        {{plover_pip}} install {{plover_pip_options}} plover-python-dictionary

        # https://github.com/antistic/plover_markdown_dictionary
        {{plover_pip}} install {{plover_pip_options}} plover_markdown_dictionary

        # https://github.com/tckmn/plover_clippy
        {{plover_pip}} install {{plover_pip_options}} git+https://github.com/Josiah-tan/plover_clippy_2

        # https://github.com/openstenoproject/plover_python_dictionary
        {{plover_pip}} install {{plover_pip_options}} git+https://github.com/openstenoproject/plover_python_dictionary

install_plover_config:
        cp {{plover_config_local}} {{plover_config_remote}}

install_clippy_watch_alias:
        echo 'alias clippy="tail -f {{clippy_log}}"' >> {{shell_rc}}

install: retrieve_dicts install_plugins install_plover_config install_clippy_watch_alias
