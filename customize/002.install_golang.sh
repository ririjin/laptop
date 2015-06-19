#!/bin/sh
brew_install_or_upgrade 'go'
mkdir $HOME/gopath

append_to_zshrc '#Golang PATH'
append_to_zshrc 'export GOPATH="$HOME/gopath"' 1
append_to_zshrc 'export PATH="$GOPATH/bin:$PATH"' 1