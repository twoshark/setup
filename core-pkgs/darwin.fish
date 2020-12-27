#!fish

# Brew

if ! which brew >/dev/null
    /bin/bash -c '$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)'
end

brew update

mkdir ~/repo

# golang
if ! which go >/dev/null
    brew install golang
end

echo -e "\nset -x GOPATH ~/repo" >>~/.config/fish/config.fish

# fzy
if ! which fzy >/dev/null
    brew install fzy
end

# gpg
if ! which gpg >/dev/null

    brew install gpg
end

# GH CLI
if ! which gh >/dev/null

    brew install gh
else
    gh version
end

if !which cargo >/dev/null
    brew install cargo
end

# AWS CLI
if ! which aws >/dev/null
    curl "https://awscli.amazonaws.com/AWSCLIV2.pkg" -o "artifacts/AWSCLIV2.pkg"
    sudo installer -pkg artifacts/AWSCLIV2.pkg -target /
end

# One Pass CLI
if ! which op >/dev/null
    curl https://cache.agilebits.com/dist/1P/op/pkg/v1.8.0/op_darwin_amd64_v1.8.0.pkg --output artifacts/op.pkg
    sudo installer -pkg artifacts/op.pkg -target /
end
