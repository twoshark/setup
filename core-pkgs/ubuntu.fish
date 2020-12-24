#!/usr/local/bin/fish

sudo apt update

sudo apt install zip unzip

mkdir ~/repo

# golang
if ! which go >/dev/null
    sudo apt install go
end

echo -e "\nset -x GOPATH ~/repo" >>~/.config/fish/config.fish

# fzy
if ! which fzy >/dev/null
    sudo apt install fzy
end

# gpg
if ! which gpg >/dev/null
    sudo apt install gpg
end

# GH CLI
if ! which gh >/dev/null
    sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-key C99B11DEB97541F0
    sudo apt-add-repository https://cli.github.com/packages
    sudo apt update
    sudo apt install gh
else
    gh version
end

if ! which cargo >/dev/null
    sudo apt install cargo
end


# AWS CLI
if ! which aws >/dev/null
    sudo apt install aws-cli
end

# One Pass CLI
if ! which op >/dev/null
    curl https://cache.agilebits.com/dist/1P/op/pkg/v1.8.0/op_linux_amd64_v1.8.0.zip --output artifacts/op-ubunutu.zip
    unzip -t artifacts/op-ubunutu.zip
    cp artifacts/op /usr/local/bin/op
end
