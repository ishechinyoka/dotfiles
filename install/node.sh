#!/usr/bin/env zsh
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.11/install.sh | bash

nvm install 8.11.2
nvm use 8.11.2
nvm alias default 8.11.2

npm install -g npm@latest
npm update -g

npm install -g diff-so-fancy
npm install -g eslint
npm install -g eslint-config-xo-space
npm install -g fkill-cli
npm install -g htmlhint
npm install -g jsonlint
npm install -g npm-check-updates
npm install -g pure-prompt
npm install -g sass-lint
npm install -g trash-cli
npm install -g vtop
