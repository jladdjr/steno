plover_pip := "~/.local/bin/pip3.9"

retrieve_dicts:
	wget --quiet https://raw.githubusercontent.com/EPLHREU/emily-modifiers/master/emily-modifiers.py -O dictionaries/emily-modifiers.py
	wget --quiet https://raw.githubusercontent.com/EPLHREU/emily-symbols/main/emily-symbols.py -O dictionaries/emily-symbols.py

install_plugins:
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