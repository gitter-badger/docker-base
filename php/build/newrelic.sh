#!/usr/bin/env bash
set -e

wget -O - https://download.newrelic.com/548C16BF.gpg | sudo apt-key add -
sh -c 'echo "deb http://apt.newrelic.com/debian/ newrelic non-free" > /etc/apt/sources.list.d/newrelic.list'
apt-get update
apt-get -y install newrelic-php5
