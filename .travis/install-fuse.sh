#!/bin/sh

# https://docs.travis-ci.com/user/multi-os/
# https://docs.travis-ci.com/user/osx-ci-environment/

# http://apple.stackexchange.com/questions/72226/installing-pkg-with-terminal

if [[ $TRAVIS_OS_NAME == 'osx' ]]; then
	# In /Users/travis/build/bolav/fuse-travis
	ls -l /Applications/Fuse.app/Contents/Uno/uno.exe
	wget https://api.fusetools.com/fuse-release-management/releases/${FUSE_VERSION}/osx
	mv osx fuse/fuse_osx_${FUSE_VERSION}.pkg
	sudo installer -pkg fuse/fuse_osx_${FUSE_VERSION}.pkg -target /
	echo "Installed Fuse"
	fuse install android < ./.travis/sdkinstall.txt
fi
