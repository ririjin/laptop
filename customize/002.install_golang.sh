#!/bin/sh
brew_install_or_upgrade 'go'

if [ ! -d "$HOME/gopath" ]; then
  mkdir "$HOME/gopath"
fi

append_to_zshrc '#Golang PATH'
append_to_zshrc 'export GOPATH="$HOME/gopath"' 1
append_to_zshrc 'export PATH="$GOPATH/bin:$PATH"' 1
append_to_zshrc 'export PATH="$PATH:/usr/local/opt/go/libexec/bin"' 1