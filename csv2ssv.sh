#!/bin/sh

set -e

# Extract the first all item of multiple line CSV and convert them into
# space separated values that can used as for loop items.
# See tests/test-csv2ssv.sh for examples.
cut -d',' -f1 | tr '\r\n' ' ' | xargs
