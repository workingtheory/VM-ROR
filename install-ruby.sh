#!/usr/bin/env bash

source /usr/local/rvm/scripts/rvm

rvm use --install --default $1

shift

# gem install rails --version 4.0.0

if (( $# ))
	then gem install $@
fi

# usermod -a -G rvm vagrant # doesn't seem to work
# sudo gem update bundler # fix bundler bug