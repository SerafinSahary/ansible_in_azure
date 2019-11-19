#!/bin/bash

echo -n "Building authorized_keys file for root..."
cd `dirname $0`

echo -n "" > authorized_keys

find $PWD -name id_rsa.pub -exec cat '{}' >> authorized_keys ';'

echo "done."
