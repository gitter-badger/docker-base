#!/usr/bin/env bash
set -e

export DEBIAN_FRONTEND=noninteractive

echo -e "\nRUBY"
echo "------------------------------------------------------------"
ruby -v

echo -e "\nBUNDLER"
echo "------------------------------------------------------------"
bundle -v

echo -e "\nNODE JS"
echo "------------------------------------------------------------"
node -v

echo -e "\nNPM"
echo "------------------------------------------------------------"
npm -v

echo -e "\nGULP"
echo "------------------------------------------------------------"
gulp -v

echo -e "\nSASS"
echo "------------------------------------------------------------"
sass -v

echo -e "\nCOMPASS"
echo "------------------------------------------------------------"
compass -v
