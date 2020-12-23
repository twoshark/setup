#!/usr/local/bin/fish

# kubie
if ! which kubie >/dev/null; then
    brew install kubie
end

# kubectx
if ! which kubectx >/dev/null; then
    brew install kubectx
end

# kubens
if ! which kubens >/dev/null; then
    brew install kubens
end