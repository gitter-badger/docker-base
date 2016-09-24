#!/usr/bin/env bash
set -e

export DEBIAN_FRONTEND=noninteractive

wget -O - https://packagecloud.io/gpg.key | apt-key add -
echo "deb http://packages.blackfire.io/debian any main" | tee /etc/apt/sources.list.d/blackfire.list
apt-get update

apt-get install blackfire-php
