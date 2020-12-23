#!/usr/local/bin/fish

cd ~/repo

mkdir bisontrails
cd bisontrails

gh repo clone bisontrails/infrastructure
gh repo clone bisontrails/resource-manager
gh repo clone bisontrails/protocol-celo
gh repo clone bisontrails/protocol-near
gh repo clone bisontrails/protocol-eth2
gh repo clone bisontrails/workflow
gh repo clone bisontrails/integration-tests
gh repo clone bisontrails/deployment-workflows


