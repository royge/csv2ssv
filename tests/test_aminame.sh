#!/bin/bash

set -e

CMD=../aminame.sh
TEST_FILE=./output.txt

RES=$(cat $TEST_FILE | $CMD)
EXPECTED="ami-name-here"

if [ "$EXPECTED" != "$RES" ]
then
    echo "ERR: expected '$EXPECTED', got '$RES'"
    exit 1
fi
echo "PASS"
