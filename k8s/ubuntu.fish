#!/usr/local/bin/fish

# kubie
if ! which kubie >/dev/null
    cargo install kubie
end

# kubectx
if ! which kubectx >/dev/null
    sudo apt install kubectx
end

# kubens
if ! which kubens >/dev/null
    sudo apt install kubens
end

if ! which stern >/dev/null
    sudo apt install stern
end