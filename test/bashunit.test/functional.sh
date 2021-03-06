#!/bin/bash

# Copyright 2016 Alessandra Bilardi. All Rights Reserved.
# Released under the MIT License.
# Author: alessandra.bilardi@gmail.com (Alessandra Bilardi)
#
# Unit test.
#
# This script contains the basic test of the my-script.

# initialize
BIN="../my-script.sh"

# main
assertLike "function version -V" "$(./$BIN -V)" "[0-9]+.[0-9]+.[0-9]+"
assertLike "function version --version" "$(./$BIN --version)" "[0-9]+.[0-9]+.[0-9]+"
assertLike "function version -h" "$(./$BIN -h | grep SYNOPSIS)" "SYNOPSIS"
assertLike "function version --help" "$(./$BIN --help | grep SYNOPSIS)" "SYNOPSIS"
