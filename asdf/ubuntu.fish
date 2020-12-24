#!/usr/local/bin/fish

if ! which gh >/dev/null
    git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.8.0
else
    asdf version
end

echo -e "\nsource ~/.asdf/asdf.fish" >>~/.config/fish/config.fish
