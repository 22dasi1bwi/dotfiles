#!/bin/bash
SCRIPT_DIR=$(dirname $(readlink -f $0))

pushd $SCRIPT_DIR
sudo openvpn --config NT.ovpn --config /etc/openvpn/scripts/update-systemd-resolved.conf
popd
