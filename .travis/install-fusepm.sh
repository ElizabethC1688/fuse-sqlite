#!/bin/sh

if [[ $TRAVIS_OS_NAME == 'osx' ]]; then
	npm install -g fusepm
fi
