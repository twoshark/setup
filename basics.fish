#!/usr/local/bin/fish

mkdir ~/repo

# golang
if ! which go >/dev/null; then
    brew install golang
end

echo -e "\nset -x GOPATH ~/repo" >>~/.config/fish/config.fish

# fzy
if ! which fzy >/dev/null; then
    brew install fzy
end

# gpg
if ! which gpg >/dev/null; then
    brew install gpg
end

# GH CLI
if ! which gh >/dev/null; then
    brew install gh
else
    gh version
end

# AWS CLI
if ! which aws >/dev/null; then
    curl "https://awscli.amazonaws.com/AWSCLIV2.pkg" -o "artifacts/AWSCLIV2.pkg"
    sudo installer -pkg artifacts/AWSCLIV2.pkg -target /
end

# One Pass CLI
if ! which op >/dev/null; then
    curl https://cache.agilebits.com/dist/1P/op/pkg/v1.8.0/op_darwin_amd64_v1.8.0.pkg --output artifacts/op.pkg
    sudo installer -pkg artifacts/op.pkg -target /
end
