#!/usr/local/bin/fish

# Kubectl

asdf plugin-add kubectl https://github.com/Banno/asdf-kubectl.git
asdf install kubectl 1.20.1
asdf install kubectl latest
asdf global kubectl 1.20.1

# Helm

asdf plugin-add helm https://github.com/Antiarchitect/asdf-helm.git
asdf install helm 2.17.0
asdf install helm latest
asdf global helm 2.17.0

# Node / NPM 

asdf plugin-add nodejs https://github.com/asdf-vm/asdf-nodejs.git
asdf install nodejs 10.23.0
asdf install nodejs latest 
asdf global nodejs 10.23.0
