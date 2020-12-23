#!/bin/bash

# fish
if ! which fish >/dev/null; then
    brew install fish

    # init fish config
    touch ~/.config/fish/config.fish
fi

# fisher
curl -sL https://git.io/fisher >artifacts/fisherinstall

# plugins
fish artifacts/fisherinstall