#!/bin/sh
brew_install_or_upgrade 'tree'
brew_install_or_upgrade 'autojump'
brew_install_or_upgrade 'ttyrec'
brew_install_or_upgrade 'ctags'
brew_install_or_upgrade 'shellcheck'
brew_install_or_upgrade 'bash-completion'
brew_install_or_upgrade 'memcached'
brew_install_or_upgrade 'mysql'

brew_tap 'caskroom/cask'
brew_install_or_upgrade 'brew-cask'