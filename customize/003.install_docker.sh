#!/bin/sh
brew_install_or_upgrade 'boot2docker'
brew_install_or_upgrade 'docker-compose'

brew cask install 'virtualbox'

append_to_zshrc '#boot2docker Env'
append_to_zshrc 'export DOCKER_CERT_PATH=~/.boot2docker/certs/boot2docker-vm' 1
append_to_zshrc 'export DOCKER_TLS_VERIFY=1' 1
append_to_zshrc 'export DOCKER_HOST=tcp://boot2docker:2376' 1

append_to_hosts '192.168.59.103 boot2docker'