#!/bin/bash

set -e

CMD=../csv2ssv.sh
TEST_FILE=./csv.txt

RES=$(cat $TEST_FILE | $CMD)
EXPECTED="ami-123456 ami-789012 ami-345678 ami-901234"

if [ "$EXPECTED" != "$RES" ]
then
    echo "ERR: expected '$EXPECTED', got '$RES'"
    exit 1
fi
echo "PASS"
