#!/usr/local/bin/fish

# Asdf 
if ! which gh >/dev/null; then
    brew install coreutils curl git
    brew install asdf
else
    asdf version
end

echo -e "\nsource "(brew --prefix asdf)"/asdf.fish" >>~/.config/fish/config.fish