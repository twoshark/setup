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
    sudo apt install govendor
    mkdir -p $GOPATH/src/github.com/wercker
    cd $GOPATH/src/github.com/wercker
    git clone https://github.com/wercker/stern.git
    cd stern
    govendor sync
    go install
end