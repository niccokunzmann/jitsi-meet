#!/bin/bash

set -e


#
# install npm and node
# see https://tecadmin.net/install-latest-nodejs-npm-on-debian/
#


apt-get install curl software-properties-common
curl -sL https://deb.nodesource.com/setup_11.x | bash -
apt-get update

echo "node" `node -v`
echo "npm" `npm -v`

#
# install react native
# see https://facebook.github.io/react-native/docs/getting-started.html#installing-dependencies
#

npm install -g npm
npm install -g react-native-cli

#
# create the JavaScript bundle to use
# https://stackoverflow.com/a/35935409/1320237
#

# react-native install android # not working
react-native link

#
# fix gradle error
# see https://stackoverflow.com/a/53294965/1320237
#
ln -s "`which node`" /usr/local/bin/node
