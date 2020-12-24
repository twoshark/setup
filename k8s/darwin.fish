#!/usr/local/bin/fish

# kubie
if ! which kubie >/dev/null
    brew install kubie
end

# kubectx
if ! which kubectx >/dev/null
    brew install kubectx
end

# kubens
if ! which kubens >/dev/null
    brew install kubens
end

if ! which stern >/dev/null
    brew install stern
end