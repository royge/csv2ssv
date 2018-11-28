#!/bin/bash

set -e

# Extract the name of AMI from awless show output text.
# See tests/test-image-name.sh for examples.
awk '/Name/ {print;exit;}' | xargs | sed 's/|\ Name\ |\ //' | sed 's/\ |//'
