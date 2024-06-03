#!/bin/bash

set -ex

# installing dnsmasq via brew
# sudo launchctl start homebrew.mxcl.dnsmasq

brew install dnsmasq > /dev/null 2>&1 | true
BREW_CONFIG="$(brew --prefix)/etc"
DNSMASQ_CONFIG_DIR="$(brew --prefix)/etc/dnsmasq.d"
mkdir -p $DNSMASQ_CONFIG_DIR

DNSMASQ_CONFIG="$DNSMASQ_CONFIG_DIR/dnsmasq.conf"

if test -f "$DNSMASQ_CONFIG"; then
    cp $DNSMASQ_CONFIG "$DNSMASQ_CONFIG.bak"
    cat $(dirname "$0")/dnsmasq.conf > $DNSMASQ_CONFIG
    echo "conf-dir=$DNSMASQ_CONFIG_DIR/,*.conf" > $DNSMASQ_CONFIG
else
    echo "$DNSMASQ_CONFIG does not exist"
fi

cp -R $(dirname "$0")/dnsmasq.d $(brew --prefix)/etc

# bash -c "echo 'address=/test/127.0.0.1' > $(brew --prefix)/etc/dnsmasq.d/test.conf"
# bash -c "echo 'address=/local/127.0.0.1' > $(brew --prefix)/etc/dnsmasq.d/local.conf"
# bash -c "echo 'address=/*.registry.apps.fd01.prod.corp.l-it.io/registry.apps.fd01.prod.corp.l-it.io' > $(brew --prefix)/etc/dnsmasq.d/artifactory.conf"